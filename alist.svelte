<script context="module" lang="ts">
	export type AddListType =
		| "list"
		| "combo"
		| "string"
		| "number"
		| "date"
		| "time"
		| "time_dd";
	export type AddListField = {
		type: string;
		name: string;
		label: string;
		min?: number;
		max?: number;
		step?: number;
		sticky?: string;
		entity?: string;
		items?: GenericObject[];
		prefix?: string;
		required?: string;
		inputClass?: string;
		placeholder?: string;
		defaultValue?: string | number;
		initialMessage?: string;
		finalMessage?: string;
		readonlyValue?: boolean;
		disabled?: boolean;
		preventDup?: boolean;
    isClearable?: boolean;
    isSelectAll?: boolean;
		validations?: any;
		onValueChange?: (value: any) => void;
	};
</script>

<script lang="ts">
	import { getContext } from "svelte";

	import type { GenericObject } from "../../types/index.svelte";
	import type { ComboDataSource } from "../../utils/types";
	import GenericButton from "../button/GenericButton.svelte";
	import CustomIcon from "../CustomIcon.svelte";
	import DynamicInput from "./DynamicInput.svelte";
	import ErrorSlot from "./ErrorSlot.svelte";
	import InputWrapper from "./InputWrapper.svelte";
	import PlainInput from "./PlainInput.svelte";

	export let name = "";
	export let title = ""; //  - will appear if provided (empty text by default)
	export let data: Record<string, any>[] = []; // - array of objects, will be the initial data to be displayed in the component (empty array by default)
	export let onAddRow: (input: any) => void;
	export let fields: AddListField[]; //- array of minimum 1 field object, mandatory
	export let rowAdded = false;
	export let onDeleteRow: (i: number) => void;
	export let onUpdateRow: (
		i: number,
		field: string,
		data: GenericObject,
		sticky?: string,
	) => void = () => null;
	export let loading = false;
	export let disabled = false; //bool that disable all the comp inner elements from outside (false by default)

	let inputObject: GenericObject;
	let defaultInputObject: any = {};
	let duplicationList = fields.filter((f) => f.preventDup).map((f) => f.name);
	fields.forEach((field) => {
		if (field.defaultValue) defaultInputObject[field.name] = field.defaultValue;
	});
	inputObject = { ...defaultInputObject };

	$: {
		loading = loading;
	}
	$: valid = false;
	$: errors = {};

	const { onFormChange } = getContext<{
		onFormChange: (event: any) => void;
	}>("form");

	function getReadOnlyValue(dataValue: GenericObject | GenericObject[]) {
		if (Array.isArray(dataValue)) {
			return dataValue.map((c) => c.label).join(", ");
		}
		return dataValue?.label || dataValue?.value || dataValue;
	}

	// should be used in utils
	function getInputValue(input: GenericObject) {
		return input?.value || input;
	}

	//export let data_object// - bool, will indicate the results data structure to be returned from the component as "array" of objects or one "object" data with name value pairs (false by default - will return "array of objects") DO NOT START YET
	function addRow() {
		if (onAddRow) data = onAddRow(inputObject);
		else data = [{ ...inputObject }, ...data];
		inputObject = { ...defaultInputObject };
		rowAdded = true;
	}

	function deleteRow(i) {
		if (onDeleteRow) data = onDeleteRow(i);
		else data = data.filter((e, index) => i !== index);
	}

	function onInputChange(e: InputEvent, onEvent, fieldName: string) {
		// Running user's callback function
		onEvent && onEvent(e, inputObject);

		// Reset sub field
		// if(subField) inputObject[subField] = null

		// Set to invalid and exit validation if row was just added
		if (rowAdded) {
			if (
				fields.every(
					(field) => inputObject[field.name] == (null || field.defaultValue),
				)
			) {
				valid = false;
				return;
			}
			rowAdded = false;
		}

		// Update initialMessage based on finalMessage if messageField is true
		fields = fields.map((field) => {
			if (field.name == fieldName) {
				field.initialMessage = field.finalMessage;
				return field;
			}
			return field;
		});

		// Validate all fields
		validate();
	}

	function validate() {
		// setting valid=true to start fresh validation
		valid = true;
		// user validations
		for (const field of fields) {
			if (field.validations?.length) {
				field.validations.every((validation) => {
					const check = validation(inputObject[field.name]);
					if (check || check == "") {
						valid = false;
						errors[field.name] = check;
						return false;
					}
					errors[field.name] = null;
					return true;
				});
			}
		}
		// dedup validation
		if (duplicationList.length) {
			if (data?.length) {
				// if one field cannot be duplicated check that one field
				// if there is multiple fields that cannot be duplicated check that all are not duplicates
				let key = duplicationList[0];
				if (
					data.find((item) =>
						duplicationList.every(
							(key) =>
								getInputValue(item[key]) == getInputValue(inputObject[key]),
						),
					)
				) {
					errors[key] = "Duplicate input inserted";
					valid = false;
					return false;
				} else {
					return true;
				}
			}
		}
	}

	$: onFormChange({ name, detail: data });
</script>

<div class="w-full">
	{#if title}
		<div class="flex mb-1.5">
			<div class="grow strong w-full text-sm font-medium">{title}</div>
		</div>
	{/if}
	<!-- <div class="flex mb-1.5">
    {#each fields as field}
      <div class="grow strong w-full text-sm font-medium">
        {field.label}
      </div>
    {/each}
    <div class="strong w-32" />
  </div> -->
	<div class="flex gap-2 mb-4">
		{#each fields as field}
			<InputWrapper
				label={field.label}
				required={field.required || errors[field.name]?.includes("required")}
			>
				<DynamicInput
					bind:data={inputObject[field.name]}
					props={{ ...field, disabled: false }}
					name={field.name}
					on:change={(e) => {
						onInputChange(e.detail, field.onValueChange, field.name);
					}}
					on:input={(e) => {
						onInputChange(e.detail, field.onValueInput, field.name);
					}}
				/>
				<ErrorSlot fieldName={field.name} {errors} />
			</InputWrapper>
		{/each}
		<div class="strong text-center py-7 pb-0">
			<GenericButton
				onClick={addRow}
				buttonIcon={{ name: "add", width: 24, height: 24 }}
				disabled={!valid}
				className="w-12"
			/>
			<!-- <button
        type="button"
        class="w-12 h-12 relative inline-flex items-center justify-center px-1 py-2 rounded-md border shadow-nv border-custom-orange bg-custom-orange text-sm font-medium text-white hover:bg-custom-orange focus:z-10 focus:outline-none focus:ring-1 focus:ring-blue-600 focus:border-blue-600"
      >
        <CustomIcon name="add_row" width="24" height="24" />
      </button> -->
		</div>
	</div>
	<div class="w-full border rounded p-5">
		{#if data?.length}
			{#each Array(data.length) as _, i}
				<div class="flex mb-2">
					{#each fields as field}
						<div class="grow w-full">
							<div class="mr-2 h-full">
								{#if field.readonlyValue}
									<PlainInput
										readonly
										gray={true}
										value={getReadOnlyValue(data[i][field.name])}
										inputClass={field.inputClass}
										class="w-full h-full focus:ring-orange-500 focus:border-orange-500 sm:text-sm border-field-border-gray rounded-md px-2 flex h-12"
										style="background:#d3d3d36e; border-radius:0px; border:0px; color:black;"
									/>
								{:else}
									<DynamicInput
										data={data[i][field.name]}
										props={{ ...field, gray: true, placeholder: "" }}
										on:change={(e) => {
											// console.log(field,data[i][field.name],'update');
											onUpdateRow(i, field.name, e.detail, field.sticky);
										}}
										gray={data[i][field.name]?.static}
									/>
									<!-- initialMessage is a field to display a message by default-- sticky is a boolean that shows it is a field that has a message. -->
									{#if field.sticky}
										<p class="text-red-500 text-xs -mb-2">
											{data[i][field.name]?.static
												? field.finalMessage
												: field.initialMessage}
										</p>
									{/if}
								{/if}
							</div>
						</div>
					{/each}
					<div class="strong self-center text-center mx-4">
						<a
							on:click|preventDefault={() => {
								deleteRow(i);
							}}
							{disabled}
							class={`rounded  inline-block border border-transparent focus:outline-none focus:border-gray-800 focus:shadow-outline-gray ${
								disabled && "cursor-default"
							}`}
							href="/"
						>
							<div
								aria-label="remove row"
								role="button"
								class={`pl-0  hover:bg-gray-200 rounded   ${
									disabled ? "text-zinc-400 disabled" : "text-yellow-700"
								} items-center justify-center flex pt-0`}
							>
								<CustomIcon
									{disabled}
									name="dlt"
									label="Delete"
									color={"#B2833F"}
								/>
							</div>
						</a>
					</div>
				</div>
			{/each}
		{:else}
			<div class="flex h-14 justify-center">
				<span class="m-auto text-custom-gray flex">
					<!-- <CustomIcon
                name="dlt"
                width={20}
                color={"#A4A4A4"}
            /> -->
					Empty</span
				>
			</div>
		{/if}
		<input hidden value={JSON.stringify(data)} {name} />
	</div>
</div>

