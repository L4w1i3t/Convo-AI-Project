<div align="center">
  <img src="alter_ego/static/assets/logo.png" alt="Placeholder Logo" title="Placeholder Logo" />
</div>

---

ALTER EGO is a digital interactive AI interface that allows you to converse and communicate with a replication of any personality you so desire. It blends speech recognition, dynamic text and voice generation, and matching avatars to maximize the user experience. This program utilizes OpenAI GPT and Whisper, Ollama, ElevenLabs, and roberta-base go_emotions technologies in order to bring characters and personas to life.

***CURRENT VERSION: Pre-alpha***

---

## Table of Contents
- [About ALTER EGO](#about-alter-ego)
- [Features](#features)
- [Setup](#setup)
- [Usage](#usage)
- [Known Issues](#known-issues)
- [Legal](#legal)
- [Credits](#credits)
- [Contact](#contact)

---

## About ALTER EGO

ALTER EGO is an AI platform that transforms the way you interact with digital personas. By harnessing cutting-edge technologies in natural language processing and speech recognition, it enables you to have immersive conversations with any personality—be it historical figures, fictional characters, or entirely original creations.

---

## Features

- **Customizable Personalities**: Create and interact with AI-driven personalities that mimic the speech patterns, knowledge, and behaviors of any character you choose. Results may vary.

- **Language Model Selection**: Be able to chose which language models to use in your interactions on startup, between OpenAI and Ollama. The former requires
an API key and costs on a per-token basis, but is noticeable more robust. The latter is open-source and zero-cost, but requires external setup and is
more limited in its responses.

- **Advanced Speech Recognition**: Utilize OpenAI Whisper for accurate and real-time voice input processing.

- **Realistic Voice Generation**: Experience lifelike voice responses generated by ElevenLabs' state-of-the-art text-to-speech technology.

- **Emotion Detection and Response**: Employ the roberta-base go_emotions open-source model to detect emotional cues and generate contextually appropriate responses.

- **Dynamic Avatars**: Engage with matching avatars that visually represent the personalities, enhancing the conversational experience.

- **Seamless Integration**: Built to be flexible and extensible, allowing for easy addition of new features and integration with other platforms.

---

## Setup

Currently, ALTER EGO is in the early stages of development and is not officially available for general use. If you're interested in exploring the project or contributing to its development, you are welcome to clone the repository and set it up yourself. Please note that this program requires:

- **Technical Expertise**: Familiarity with Python, language models, and API integrations.
- **API Access**: Valid API keys for OpenAI and ElevenLabs.
- **An Ollama Distribution**: Have Ollama correctly set up on your system.
- **Python and pip**: This is mainly for installing the program's dependencies.
- **Hardware Requirements**: A capable system that can handle the computational load, preferably with GPU support. A full breakdown of recommended hardware will come in a future update after significant testing.

Please note that for language models, you will absolutely need the setup for either OpenAI or Ollama to use the program. The API keys are not required to
run the program itself, but they are needed to run their respective services.

# AS OF 11/24/2024:

I am currently working to create a release for the program that is not made entirely of Python code. In the meantime, I have created a pre-release version that you can activate with either a batch file
or via CLI (the terminal). As such, here is a set of instructions for setting up and running ALTER EGO locally on your system:

- **1. Download the pre-release package on the "Releases" page.**: Navigate over to the "Releases" page of this repository and download the latest pre-release version. There will only be one zip file,
as (almost) everything you need is there, and the program is cross-platform (Doesn't matter if you use Windows, Mac, or Linux) and should run fine.
- **2. Extract the zip file.**: Once you have downloaded the zip file, extract it. Easy enough, right?
- **3. Download Ollama (SEMI-OPTIONAL)**: Download the latest release of Ollama here: https://github.com/ollama/ollama/releases. When you have that properly installed, you don't have to download any models
yet. For now, if the server started up by default, stop the server via your taskbar, and also disable Ollama from booting up with other startup apps. This is just my setup, but it makes things a bit easier
with ALTER EGO, as you can only have one instance of the server running at a time on your machine.
- **4. Gather your OpenAI and/or ElevenLabs API keys (SEMI-OPTIONAL)**: If you have either service, you can generate API keys respectively through their playgrounds. Unfortunately, these ARE paid services, so using them
will cost you either on a subscription basis or a by-token basis. OpenAI's GPT 4o, while paid, is noticeably "smarter" than Ollama, so weigh your options carefully.
- **5. Go to the ALTER EGO directory and navigate to alter_ego**: One of the first things you will see upon opening the ALTER EGO folder is a shortcut batch file of the same name and a source folder called alter_ego.
Go to the source directory. This is where you will create a virtual environment (or venv) that holds all the dependencies.
- **6. Create a virtual environment**: Open your terminal IN the alter_ego directory and enter the command "py -m venv venv" and wait until the venv is created. After that, run "venv/Scripts/activate" to activate the venv.
You will know if you are in it by the "(venv)" prefix next to your path. All that's left is entering "pip install -r requirements.txt" and waiting, as the venv will then install all dependencies listed in requirements.txt.
After that, you can close that terminal; you're basically done with all the external stuff.
- **7. Run ALTER EGO.lnk (or whatever the shortcut is named)**: Self-explanatory. When you do that, a terminal will open, but don't worry, I'm not injecting malware on your computer. There you will see everything initialized,
and if everything goes smoothly, it should say that files were loaded successfully and that the API keys are missing. This is normal, as you haven't entered them yet. If it says that an LlaMa model is installing, that's also normal (I haven't tested this yet.) You will then get a dialog choice to 
choose either Ollama or OpenAI for text generation. Choose whichever you want, but know that the respective services will be disabled if you don't have them set up.
- **8. Add your own data into the program**: Now you can see a hamburger menu where, if clicked, you can now manage your API keys and character data. Next to the voice selection, you can manage your ElevenLabs voice models.
Feel free to go ham and add whatever the heck you want now that you're in the program.
- **9. Have fun!**: Now enjoy ALTER EGO to your heart's content (at least what the pre-release has to offer.)

---

## Usage

Once you have the system set up, you can start using ALTER EGO as follows:

1. **Launch the Application**: Run the main script to start the interface.

2. **Select or Create a Personality**:
   - Choose from pre-built personalities OR
   - Customize or create a new persona by defining attributes, knowledge base, and behavioral patterns.

3. **Initiate Conversation**:
   - Use your microphone to speak naturally OR
   - Type your message for the program to respond.

4. **Receive Responses**:
   - ALTER EGO generates a context-aware response using a language model.
   - The response is vocalized through ElevenLabs' voice synthesis.
   - An avatar displays appropriate expressions based on the emotional context.

5. **Continue Interaction**:
   - Engage in an ongoing dialogue.
   - The program adapts to the conversation flow and emotional cues.

---

## Known Issues

- ALTER EGO will sometimes crash when using speech recognition.
- The ElevenLabs API can be slow to respond, causing delays in voice synthesis.
- Chat History does not function when using OpenAI.
- When opening a new window, the program will close entirely if you cancel midway through initiation.
- The user can still toggle ElevenLabs functionality on and off after startup if no voice models were found during initiation.

**If new issues are found, please open an issue on the repository.**

---

## Legal

By using ALTER EGO, you agree to comply with the following:

- **API Terms of Service**:
  - OpenAI: [Terms](https://openai.com/policies/terms-of-use)
  - ElevenLabs: [Terms](https://elevenlabs.io/terms)

- **Content Responsibility**:
  - Users are responsible for ensuring that the content generated does not violate any laws or regulations.
  - Do not use the software for harmful, unethical, or illegal activities.

- **Intellectual Property Rights**:
  - Respect copyrights, trademarks, and other intellectual property rights when creating or interacting with personalities.
  - Obtain necessary permissions if you plan to use protected material.

- **Privacy**:
  - Be cautious when sharing personal information.
  - I am not liable for any data breaches or unauthorized access resulting from misuse.

---

## Credits

- **OpenAI API**: https://openai.com
- **OpenAI Whisper**: https://openai.com/whisper
- **Ollama**: https://github.com/ollama/ollama?tab=readme-ov-file
- **ElevenLabs API**: https://www.elevenlabs.io
- **roberta-base go_emotions**: https://huggingface.co/SamLowe/roberta-base-go_emotions

---

## Contact

For questions, feedback, or contributions, please open an issue on the repository. As the project is still under development and not publicly available, direct contact information will be provided in future updates.

---