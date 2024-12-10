{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    jupyter-all
    (
      with jupyter-all.pkgs; [
        matplotlib
        tqdm
        torch
        typing-extensions
        torchvision
      ]
    )
  ];
  JUPYTER_CONFIG_DIR = "./config";
}
