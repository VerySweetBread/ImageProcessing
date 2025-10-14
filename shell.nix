{ pkgs ? import <nixpkgs> {} }: let
  pypkgs = pkgs.python3Packages;
in
  pkgs.mkShell {
    buildInputs = with pypkgs; [
      python
      opencv4
      virtualenv
      pkgs.jupyter
      ipython
      matplotlib
      scikit-image
      catppuccin
    ];

    shellHook = ''
      jupyter notebook
    '';
  }
