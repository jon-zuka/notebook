{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    jupyter-all
  ];
  JUPYTER_CONFIG_DIR = "./config";
}
