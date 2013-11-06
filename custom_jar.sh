
jarBaseName=$1
tempSmaliDir=$2

if [ "$jarBaseName" = "android.policy" ];then
	echo ">>> in custom_jar for android.policy"
	echo "jarBaseName: $jarBaseName  tempSmaliDir: $tempSmaliDir"

	echo ">>> remove method isWakeKeyWhenKeyguardShowing(IZ)Z in baidu policy"
	sed -i -e "/^\.method.*isWakeKeyWhenKeyguardShowing(IZ)Z/,/^\.end method/d" $tempSmaliDir/smali/com/android/internal/policy/impl/KeyguardViewMediator.smali

	echo ">>> remove method observe()V in baidu policy"
	sed -i -e "/^\.method.*observe()V/,/^\.end method/d" $tempSmaliDir/smali/com/android/internal/policy/impl/PhoneWindowManager\$SettingsObserver.smali

        echo ">>> remove method updateSettings()V in baidu policy"
	sed -i -e "/^\.method.*updateSettings()V/,/^\.end method/d" $tempSmaliDir/smali/com/android/internal/policy/impl/PhoneWindowManager.smali

        echo ">>> remove method interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I in baidu policy"
	sed -i -e "/^\.method.*interceptKeyBeforeQueueing(Landroid\/view\/KeyEvent;IZ)I/,/^\.end method/d" $tempSmaliDir/smali/com/android/internal/policy/impl/PhoneWindowManager.smali

fi
