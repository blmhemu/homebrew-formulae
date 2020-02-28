cask 'ueli' do
    version '8.5.2'
    sha256 '1b208f76c7740076379fbd6327761a27ef22b989f65f6ca15192e1ba1e39513f'

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