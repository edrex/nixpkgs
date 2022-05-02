{ lib
, stdenv
, scdoc
, fetchFromGitLab
, buildGoModule }:

buildGoModule rec {
  pname = "darkman";
  version = "v1.3.1";

  src = fetchFromGitLab {
    owner = "WhyNotHugo";
    repo = "darkman";
    rev = version;
    sha256 = "sha256-gfqyg5jgiqx0V0llahniwVm9rChFGZe9YQgxzlliPCY=";
  };

  vendorSha256 = "sha256-CGgWEaHztWeCQPIrobwLHuDkFauJM19hBU7JsA3HMic=";

  meta = with lib; {
    description = "A framework for dark-mode and light-mode transitions on Linux desktop";
    homepage = "https://gitlab.com/WhyNotHugo/darkman";
    license = licenses.isc;
    platforms = platforms.linux;
  };
}