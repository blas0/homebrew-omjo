cask "oh-my-just-open" do
  version "1.0.0"
  sha256 "0974f3b3aa7b3482bca367c3f4dcd8c1df47959952ba0afb3fac190404a29b04"

  url "https://github.com/blas0/oh-my-just-open/releases/download/oh-my-just-open-v#{version}/oh-my-just-open-#{version}.dmg"
  name "oh-my-just-open"
  desc "Minimal default-app manager"
  homepage "https://github.com/blas0/oh-my-just-open"

  # Keep the project-prefixed release tag when checking GitHub.
  livecheck do
    url :url
    regex(/oh-my-just-open[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :github_releases
  end

  app "oh-my-just-open.app"

  zap trash: [
    "~/Library/Application Support/com.neurix.oh-my-just-open",
    "~/Library/Caches/com.neurix.oh-my-just-open",
    "~/Library/Preferences/com.neurix.oh-my-just-open.plist",
  ]
end
