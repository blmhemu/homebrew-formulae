cask 'ueli' do
    version '8.5.3'
    sha256 'bdf1f3a579d8c35b4c0030afe88c6c5ff019920f262809bf518a21883ae51e74'

    url "https://github.com/oliverschwendener/ueli/releases/download/v#{version}/ueli-#{version}.dmg"
    appcast 'https://github.com/oliverschwendener/ueli/releases.atom'
    name 'ueli'
    homepage 'https://ueli.app/'
    auto_updates true
    app 'ueli.app'

    zap trash: [
        '~/Library/Logs/ueli',
        '~/Library/Application Support/ueli',
        '~/Library/Preferences/com.electron.ueli.plist'
    ]
end