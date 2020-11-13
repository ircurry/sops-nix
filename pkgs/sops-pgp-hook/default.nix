{ stdenv, makeSetupHook, gnupg, sops, nix }:

(makeSetupHook {
  substitutions = {
    gpg = "${gnupg}/bin/gpg";
  };
  deps = [ sops gnupg ];
} ./sops-pgp-hook.bash)
