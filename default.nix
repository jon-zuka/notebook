{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    jupyter-all
    (
      with jupyter-all.pkgs; [
        matplotlib
      ]
    )
  ];
  JUPYTER_CONFIG_DIR = "./config";
}
