Shoes.app :width => 150, :height => 150, :margin => 10 do
    button "on" do
        system('cd /System/Library/Frameworks/ScreenSaver.framework/Resources/;
		nohup ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &')
    end
    button "on with S.W." do
        Rake::Task['cd /System/Library/Frameworks/ScreenSaver.framework/Resources/']
        Rake::Task['nohup ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &']
        Rake::Task['nohup /usr/local/sbin/sleepwatcher -w /Applications/background_wallsaver &']
    end
    button "off" do
        system('Killall -9 ScreenSaverEngine')
    end
end
