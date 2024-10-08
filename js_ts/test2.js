// ==UserScript==
// @name         yLoader | YouTube Downloader
// @namespace    http://tampermonkey.net/
// @description  Worlds most advanced YouTube Downloader
// @author       yLoader.ws
// @match        https://www.youtube.com/*
// @icon                https://www.google.com/s2/favicons?sz=64&domain=youtube.com
// @grant        none
// @license      MIT
// @run-at       document-end
// @version      0.2
// ==/UserScript==


const buttons = ["MP3", "MP4"];

const greeting = 'Hello World!'
let y
let a = 1
const ll = 'some'

// There is no consistent variable for border-radius (button roundness) yet.
// Old border-radius: 2px. New border-radius: 20px or higher.
const cssText = `
    .download-button {
        border-radius: 20px;
        display: flex;
        flex-direction: row;
        cursor: pointer;
        background-color: #ac0101;
        color: white;
        padding: var(--yt-button-padding);
        margin: auto var(--ytd-subscribe-button-margin, 4px);
        white-space: nowrap;
        max-height: 36px;
        font-size: var(--ytd-tab-system-font-size, 1.2rem);
        font-weight: var(--ytd-tab-system-font-weight, 500);
        letter-spacing: var(--ytd-tab-system-letter-spacing, .007px);
        text-transform: var(--ytd-tab-system-text-transform, uppercase);
    }
    .download-button:hover{
        background-color: #ff0000;
    }
    .download-button-text {
        --yt-formatted-string-deemphasize_-_display: initial;
        --yt-formatted-string-deemphasize-color: var(--yt-spec-text-secondary);
        --yt-formatted-string-deemphasize_-_margin-left: 4px;
    }
    .download-button-container {
        display: flex;
        flex-direction: row;
    }
    .download-button-container-shorts {
        display: flex;
        flex-direction: column;
    }
    .download-playlist-button {
        margin-right: 8px;
        margin-left: 0px;
    }
    .download-playlist-button-text {
        color: #E4E4E4;
    }
    .download-button-shorts {
        border-radius: 30px;
        height: 48px;
        width: 48px;
        text-align: center;
        line-height: 48px;
        cursor: pointer;
        background-color: #ac0101;
        color: white;
        white-space: nowrap;
        font-size: 13px;
        font-weight: var(--ytd-tab-system-font-weight, 500);
        letter-spacing: var(--ytd-tab-system-letter-spacing, .007px);
        text-transform: var(--ytd-tab-system-text-transform, uppercase);
    }
    .download-button-shorts:hover{
        background-color: #ff0000;
    }
`;


(function() {
    'use strict';
    window.onload = () => {

        function run(){

            if (window.location.href.includes("youtube.com/watch")) {
                document.getElementById("downloadshorts").remove();
            }
        }

        window.onload = run;
        window.addEventListener('yt-navigate-start', run, true);



        // playlist pages will try to add the buttons repeatedly
        let playlistButtonsAdded = false;
        let youtubeshorts = false;

        window.addEventListener("yt-navigate-finish", () => {
            setTimeout(() => {
                // apply css
                const style = document.createElement("style");
                style.type = "text/css";
                style.innerHTML = cssText;
                document.head.appendChild(style);

                // check for playlist and create appropriate query
                let query = "#analytics-button:not(.download-panel)";

                let inPlaylist = location.href.includes("/playlist");
                if (inPlaylist && !playlistButtonsAdded) {
                    query += ", div.metadata-buttons-wrapper:not(.download-panel)";
                    playlistButtonsAdded = true;
                }

                if (window.location.toString().includes("youtube.com/shorts/")) {
                    // check for youtube shorts
                    youtubeshorts = true;
                    query = "#actions:not(.download-panel)";

                }

                document.querySelectorAll(query).forEach(panel => {

                    const container = document.createElement("div");

                    if(youtubeshorts){
                        container.classList.add("download-button-container-shorts");
                        container.id = "downloadshorts";

                        for (let i = 0; i < 2; i++) {
                            if(i == 0){
                                const button = document.createElement("div");
                                button.classList.add("download-button-shorts");

                                button.addEventListener("click", () => {
                                    let url = window.location.toString();
                                    let videoId = url.split("/").pop();
                                    window.open("https://yloader.ws/yturlmp3/"+videoId);
                                    document.getElementById("download-shorts").disabled = true;
                                });

                                const buttonText = document.createElement("span");
                                buttonText.classList.add("download-button-text");
                                buttonText.innerHTML = "MP3";
                                button.appendChild(buttonText);
                                button.title = "Download MP3 from short";
                                container.appendChild(button);
                            }
                            if(i == 1){
                                const button = document.createElement("div");
                                button.classList.add("download-button-shorts");

                                button.addEventListener("click", () => {
                                    let url = window.location.toString();
                                    let videoId = url.split("/").pop();
                                    window.open("https://yloader.ws/yturlmp4/"+videoId);
                                });

                                const buttonText = document.createElement("span");
                                buttonText.classList.add("download-button-text");
                                buttonText.innerHTML = "MP4";
                                button.appendChild(buttonText);
                                button.title = "Download MP4 from short";
                                button.style.margin = "15px 0px 0px 0px";
                                container.appendChild(button);
                            }

                        }


                    }else{
                        container.classList.add("download-button-container");
                        for (let i = 0; i < 2; i++) {
                        const button = document.createElement("div");
                        button.classList.add("download-button");
                        if (inPlaylist) { button.classList.add("download-playlist-button"); }

                        if(i == 0){
                            button.addEventListener("click", () => {
                                var videoId = new URL(window.location.href).searchParams.get("v");
                                window.open("https://yloader.ws/yturlmp3/"+videoId);
                            });

                            const buttonText = document.createElement("span");
                            buttonText.classList.add("download-button-text");
                            if (inPlaylist) { buttonText.classList.add("download-playlist-button-text"); }
                            buttonText.innerHTML = buttons[i];
                            button.appendChild(buttonText);
                            button.title = "Download MP3 from Video";
                            container.appendChild(button);


                        }

                        if(i == 1){
                            button.addEventListener("click", () => {
                                var videoId = new URL(window.location.href).searchParams.get("v");
                                window.open("https://yloader.ws/yturlmp4/"+videoId);
                            });

                            const buttonText = document.createElement("span");
                            buttonText.classList.add("download-button-text");
                            if (inPlaylist) { buttonText.classList.add("download-playlist-button-text"); }
                            buttonText.innerHTML = buttons[i];
                            button.appendChild(buttonText);
                            button.title = "Download Video as MP4";
                            container.appendChild(button);

                        }

                    }
                    }

                    panel.classList.add("download-panel");
                    panel.insertBefore(container, panel.firstElementChild);
                });
            }, 200);
        });
    };
})();
