/* eslint-disable no-unused-vars */
/* eslint-disable react/prop-types */
/* eslint-disable jsx-a11y/label-has-associated-control */
import { Form, Input, Button, Row, Col, Spin, message, Select } from 'antd';
import Router from 'next/router';

import * as yup from 'yup';
import { useField, useFormik } from 'formik';
import styled from 'styled-components';
import { createConnect } from 'services/connects';
import { useState } from 'react';
import { Connect } from 'types/connect';
import { get } from 'http';

const { Option } = Select;
const { TextArea } = Input;

const StyledForm = styled.div(
  ({
    theme: {
      down, breakpoints,
    },
  }) => `
  & .ant-form-item {
    margin-bottom: 0;
  }
  ${down(breakpoints.sm)} {
    padding: 0 15px;
  }
`,
);

const emailNotLongEnough = 'email must be at least 3 characters';
const invalidEmail = 'email must be a valid email';
const requiredField = (fieldName: string) => `${fieldName} is required.`;

const validationSchema = yup.object().shape({
  first_name: yup
    .string()
    .max(255)
    .required(requiredField('First Name')),
  last_name: yup
    .string()
    .max(255)
    .required(requiredField('Last Name')),
  email: yup
    .string()
    .min(3, emailNotLongEnough)
    .max(255)
    .email(invalidEmail)
    .required(requiredField('Email')),
  company_name: yup
    .string()
    .max(255)
    .required(requiredField('Company Name')),
  phone_number: yup
    .string()
    .max(255)
    .required(requiredField('Phone Number')),
  frequency: yup
    .string()
    .required(requiredField('Freqency')),
  start_date: yup
    .string()
    .required(requiredField('Start Date')),

  notes_about_them: yup
    .string()
    .required(requiredField('Notes Required')),
  notes_advice_wanted: yup
    .string()
    .required(requiredField('Notes Required')),
  notes_what_is_common: yup
    .string()
    .required(requiredField('Notes Required')),

});

const FormItem = Form.Item;

const ConnectForm: React.FC = () => {
  const [loading, setLoading] = useState<boolean>(false);

  const handleSubmit = async (values: Connect) => {
    setLoading(true);
    try {
      const { data } = await createConnect(values);
      console.log('Data: ', data);
      message.success(data.message);
      setLoading(false);
      Router.replace('/login');
    } catch (error) {
      console.log('SOMETHING WENT WRONG:', error && error.response);
      message.error('Something went wrong.');
      setLoading(false);
    }
  };

  const formik = useFormik({
    initialValues: {
      first_name: '',
      last_name: '',
      email: '',
      phone_number: '',
      company_name: '',
      notes_about_them: '',
      notes_advice_wanted: '',
      notes_what_is_common: '',
      frequency: '',
      start_date: '',
    },
    validationSchema,
    onSubmit: handleSubmit,
  });

  return (
    <StyledForm>
      <Spin spinning={loading}>
        <Form
          layout="vertical"
          name="register-form"
          onFinish={formik.handleSubmit}
        >
          <Row gutter={{ sm: 24 }}>
            <Col xs={24} sm={12}>
              <FormItem
                help={formik.touched.first_name && formik.errors.first_name ? formik.errors.first_name : ''}
                validateStatus={formik.touched.first_name && formik.errors.first_name ? 'error' : undefined}
                label="First Name"
              >
                <Input
                  name="first_name"
                  placeholder="First Name"
                  value={formik.values.first_name}
                  onChange={formik.handleChange}
                  onBlur={formik.handleBlur}
                />
              </FormItem>
            </Col>
            <Col xs={24} sm={12}>
              <FormItem
                help={formik.touched.last_name && formik.errors.last_name ? formik.errors.last_name : ''}
                validateStatus={formik.touched.last_name && formik.errors.last_name ? 'error' : undefined}
                label="Last Name"
              >
                <Input
                  name="last_name"
                  placeholder="Last Name"
                  value={formik.values.last_name}
                  onChange={formik.handleChange}
                  onBlur={formik.handleBlur}
                />
              </FormItem>
            </Col>
            <Col xs={24} sm={12}>
              <FormItem
                help={formik.touched.email && formik.errors.email ? formik.errors.email : ''}
                validateStatus={formik.touched.email && formik.errors.email ? 'error' : undefined}
                label="Email"
              >
                <Input
                  name="email"
                  placeholder="Email"
                  value={formik.values.email}
                  onChange={formik.handleChange}
                  onBlur={formik.handleBlur}
                />
              </FormItem>
            </Col>
            <Col xs={24} sm={12}>
              <FormItem
                help={formik.touched.company_name && formik.errors.company_name ? formik.errors.company_name : ''}
                validateStatus={formik.touched.company_name && formik.errors.company_name ? 'error' : undefined}
                label="Company Name"
              >
                <Input
                  name="company_name"
                  placeholder="Company Name"
                  value={formik.values.company_name}
                  onChange={formik.handleChange}
                  onBlur={formik.handleBlur}
                />
              </FormItem>
            </Col>
            <Col xs={24} sm={12}>
              <FormItem
                help={formik.touched.phone_number && formik.errors.phone_number ? formik.errors.phone_number : ''}
                validateStatus={formik.touched.phone_number && formik.errors.phone_number ? 'error' : undefined}
                label="Phone Number"
              >
                <Input
                  name="phone_number"
                  placeholder="Phone Number"
                  value={formik.values.phone_number}
                  onChange={formik.handleChange}
                  onBlur={formik.handleBlur}
                />
              </FormItem>
            </Col>
            <Col xs={24} sm={12}>
              <FormItem
                name="frequency"
                help={formik.touched.frequency && formik.errors.frequency ? formik.errors.frequency : ''}
                validateStatus={formik.touched.frequency && formik.errors.frequency ? 'error' : undefined}
                label="Connect Frequency"
              >
                {JSON.stringify({ ...formik.getFieldProps('frequency') })}
                <Select
                  placeholder="Connect Frequency"
                  style={{ width: 120 }}
                  value={formik.values.frequency}
                  onChange={(value) => { formik.setFieldValue('frequency', value); }}
                  onBlur={formik.handleBlur}
                  onSelect={formik.handleChange}
                >
                  <Option value="weekly">Weekly</Option>
                  <Option value="monthly">Monthly</Option>
                </Select>
              </FormItem>

            </Col>
            <Col xs={24} sm={12}>
              <FormItem
                help={formik.touched.start_date && formik.errors.start_date ? formik.errors.start_date : ''}
                validateStatus={formik.touched.start_date && formik.errors.start_date ? 'error' : undefined}
                label="Start Date"
              >
                <Input
                  name="start_date"
                  placeholder="Start Date"
                  value={formik.values.start_date}
                  onChange={formik.handleChange}
                  onBlur={formik.handleBlur}
                />
              </FormItem>
            </Col>

            <Col xs={24} sm={12}>
              <FormItem
                help={formik.touched.notes_what_is_common && formik.errors.notes_what_is_common ? formik.errors.notes_what_is_common : ''}
                validateStatus={formik.touched.notes_what_is_common && formik.errors.notes_what_is_common ? 'error' : undefined}
                label="Notes What is Common"
              >
                <TextArea
                  name="notes_what_is_common"
                  placeholder="Notes What is Common"
                  value={formik.values.notes_what_is_common}
                  onChange={formik.handleChange}
                  onBlur={formik.handleBlur}
                />
              </FormItem>
            </Col>
            <Col xs={24} sm={12}>
              <FormItem
                help={formik.touched.notes_about_them && formik.errors.notes_about_them ? formik.errors.notes_about_them : ''}
                validateStatus={formik.touched.notes_about_them && formik.errors.notes_about_them ? 'error' : undefined}
                label="Notes About Them"
              >
                <TextArea
                  name="notes_about_them"
                  placeholder="Notes About Them"
                  value={formik.values.notes_about_them}
                  onChange={formik.handleChange}
                  onBlur={formik.handleBlur}
                />
              </FormItem>
            </Col>
            <Col xs={24} sm={12}>
              <FormItem
                help={formik.touched.notes_advice_wanted && formik.errors.notes_advice_wanted ? formik.errors.notes_advice_wanted : ''}
                validateStatus={formik.touched.notes_advice_wanted && formik.errors.notes_advice_wanted ? 'error' : undefined}
                label="Notes Advice Wanted"
              >
                <TextArea
                  name="notes_advice_wanted"
                  placeholder="Notes Advice Wanted"
                  value={formik.values.notes_advice_wanted}
                  onChange={formik.handleChange}
                  onBlur={formik.handleBlur}
                />
              </FormItem>
            </Col>
          </Row>
          <FormItem>
            <Button type="primary" key="submit" htmlType="submit">
              Submit
            </Button>
          </FormItem>
        </Form>
      </Spin>
    </StyledForm>
  );
};
export default ConnectForm;
