{ inputs, ... }:

final: _prev: {
  unstable = import inputs.unstable {
    inherit (final.stdenv.hostPlatform) system;
    config.allowUnfree = true;
  };
}
