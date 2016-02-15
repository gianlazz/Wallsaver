Shoes.app :width => 150, :height => 150, :margin => 10 do
    button "on" do
        system('/Users/gianlazzarini/Desktop/wallsaver\ executables/background_wallsaver')
    end
    button "on with S.W." do
        exec('/Users/gianlazzarini/Desktop/wallsaver\ executables/Background\ Wallsaver\ w\:\ sleepwatcher')
    end
    button "off" do
        exec('Killall -9 ScreenSaverEngine')
    end
end