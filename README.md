# comfyui--install-with-conda-bat
chinese：https://home.gamer.com.tw/artwork.php?sn=5679763

--- 

This is an extension tool designed for comfyUI. The bat program is created to facilitate the manual installation of comfyUI by using conda as a basis for installation.

Before using this tool, you must download the full source code of comfyUI from "https://github.com/comfyanonymous/ComfyUI" and extract it to the desired location. Additionally, you must install CUDA 11.8 manually.

To use this bat program:

1. You must first install Anaconda and make sure to select "Add Anaconda3 to my PATH environment variable" during installation. =>https://www.anaconda.com/ 
2. After installation, download the program from this GitHub repository and place it in the comfyUI folder. There are three main bat files (ComfyUI_BG_conda.bat, ComfyUI_BG_install.bat, 1.install.bat) which should be placed in the same folder as main.py.
3. The automatic name on Conda will be "comfyUI". Please make sure there are no conflicts with other packages on your system. If there are any conflicts, please modify the bat file accordingly.
4. To install, run 1.install.bat.
5. During the installation process, you will be asked several questions:
(1) If it is the first time you have created a Conda environment, you will be asked whether you want to install the corresponding base packages. Please enter "Y".
(2) During the installation process, you will be asked whether you have an AMD or NVIDIA graphics card. If you have an AMD card, please enter "A"; if you have an NVIDIA card, please enter "N". If you only want to use the CPU, simply press "enter" (not recommended).
(3) Finally, you will be asked whether your GPU memory is greater than 3GB. Please enter the corresponding information according to your graphics card.
(4) When installation is complete, "Done" will be displayed.
6. After installation, a "2.run.bat" file will be automatically generated. Please run it and follow the instructions in comfyUI to open the webpage.

---
これはcomfyUIの拡張ツールです。batプログラムはcondaをベースにして手動でcomfyUIをインストールするために設計されています。

このツールを使用する前に、comfyUIの完全なソースコードを「https://github.com/comfyanonymous/ComfyUI」 からダウンロードし、任意の場所に展開する必要があります。さらに、CUDA 11.8を手動でインストールする必要があります。

このbatプログラムを使用するには：

1. まずAnacondaをインストールし、インストール中に「Add Anaconda3 to my PATH environment variable」を選択する必要があります。
2. インストール後、このGitHubリポジトリからプログラムをダウンロードし、comfyUIフォルダに配置します。メインとなる3つのbatファイル（ComfyUI_BG_conda.bat、ComfyUI_BG_install.bat、1.install.bat）をmain.pyと同じフォルダに配置してください。
3. Conda上の自動命名は「comfyUI」です。他のパッケージとの競合がないように注意してください。競合がある場合は、batファイルを適宜変更してください。
4. インストールするには、1.install.batを実行してください。
5. インストールの過程で、いくつかの質問が表示されます：
（1）Conda環境を初めて作成する場合は、対応するベースパッケージをインストールするかどうかを尋ねられます。 「Y」を入力してください。
（2）インストールの過程で、AMDまたはNVIDIAのグラフィックカードをお持ちの場合は、「A」を入力してください。NVIDIAの場合は、「N」を入力してください。CPUのみを使用する場合は、単に「enter」を押してください（推奨されません）。
（3）最後に、GPUメモリが3GB以上あるかどうかを尋ねられます。グラフィックカードに応じて適切な情報を入力してください。
（4）インストールが完了すると、「Done」と表示されます。
6. インストール後、「2.run.bat」ファイルが自動的に生成されます。これを実行し、comfyUIの指示に従ってWebページを開いてください。
