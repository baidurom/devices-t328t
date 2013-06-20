.class public Lcom/htc/fmservice/defs/FMRadioIntent;
.super Ljava/lang/Object;
.source "FMRadioIntent.java"


# static fields
.field public static final ACTION_FMCALLBACK:Ljava/lang/String; = "com.htc.fmservice.callback"

.field public static final ACTION_FMRADIO:Ljava/lang/String; = "com.htc.fmservice"

.field public static final ACTION_FMRADIO_UIUPDATE:Ljava/lang/String; = "com.htc.fmradio.uiupdate"

.field public static final ACTION_TURN_OFF:Ljava/lang/String; = "com.htc.fmservice.turnoff"

.field public static final BAND_TYPE_EU:I = 0x0

.field public static final BAND_TYPE_JP:I = 0x1

.field public static final BAND_TYPE_US:I = 0x2

.field public static final COMMAND_AIRPLANE_STATE:I = 0x3f3

.field public static final COMMAND_FREQ:I = 0x3ed

.field public static final COMMAND_HEADSET_STATE:I = 0x3ee

.field public static final COMMAND_HIDE_SCAN_DIALOG:I = 0x3f8

.field public static final COMMAND_MUTE:I = 0x3f2

.field public static final COMMAND_RDS:I = 0x3eb

.field public static final COMMAND_RIVA_LOCK_STATE:I = 0x3f5

.field public static final COMMAND_RSSI:I = 0x3ec

.field public static final COMMAND_SCAN_FINISH:I = 0x3f0

.field public static final COMMAND_SEEK:I = 0x3ea

.field public static final COMMAND_SPEAKER:I = 0x3f1

.field public static final COMMAND_SWITCHING_POWER:I = 0x3ef

.field public static final COMMAND_SWITCH_POWER:I = 0x3e9

.field public static final COMMAND_TIMEOUT_EVENT:I = 0x3f6

.field public static final COMMAND_UNLOCK_STATE_MACHINE_FLAG:I = 0x3f7

.field public static final EXTRA_AIRPLANE_STATE:Ljava/lang/String; = "airplane_state"

.field public static final EXTRA_BAND:Ljava/lang/String; = "band"

.field public static final EXTRA_COMMAND:Ljava/lang/String; = "command"

.field public static final EXTRA_FREQ:Ljava/lang/String; = "freq"

.field public static final EXTRA_HEADSET_STATE:Ljava/lang/String; = "headset_state"

.field public static final EXTRA_MONO_STATE:Ljava/lang/String; = "mono_state"

.field public static final EXTRA_MUTE:Ljava/lang/String; = "mute"

.field public static final EXTRA_MUTE_ITEM_ENABLE_STATE:Ljava/lang/String; = "mute_item_enable_state"

.field public static final EXTRA_MUTE_STATE:Ljava/lang/String; = "mute_state"

.field public static final EXTRA_POWER:Ljava/lang/String; = "power"

.field public static final EXTRA_POWER_ON_STATE:Ljava/lang/String; = "power_on_state"

.field public static final EXTRA_RDS:Ljava/lang/String; = "rds"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final EXTRA_RIVA_LOCK_STATE:Ljava/lang/String; = "riva_lock_state"

.field public static final EXTRA_RSSI:Ljava/lang/String; = "rssi"

.field public static final EXTRA_SPEAKER:Ljava/lang/String; = "speaker"

.field public static final EXTRA_STEREO:Ljava/lang/String; = "stereo"

.field public static final EXTRA_TIMEOUT_COMMAND:Ljava/lang/String; = "timeout_command"

.field public static final EXTRA_UNLOCK_STATE_MACHINE_FLAG:Ljava/lang/String; = "unlock_state_machine_flag"

.field public static final RESULT_COMMAND_NOT_EXIST:I = 0x2

.field public static final RESULT_FAIL:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final STATE_SEEKING_DOWN:I = 0x18

.field public static final STATE_SEEKING_UP:I = 0x17

.field public static final STATE_TUNING:I = 0x19

.field public static final STATE_TURNING_OFF:I = 0x16

.field public static final STATE_TURNING_ON:I = 0x15

.field public static final WHAT_APP_BACKGROUND:I = 0x6f

.field public static final WHAT_APP_FOREGROUND:I = 0x6e

.field public static final WHAT_CANCEL_SCAN:I = 0x6b

.field public static final WHAT_INNER_COMMAND_START:I = 0x64

.field public static final WHAT_MUTE:I = 0x7

.field public static final WHAT_MUTE_STATE:I = 0x65

.field public static final WHAT_POWER_ON_STATE:I = 0x66

.field public static final WHAT_POWER_STATE:I = 0x67

.field public static final WHAT_RDS:I = 0xd

.field public static final WHAT_RESET_FINISH:I = 0xf

.field public static final WHAT_RESET_START:I = 0xe

.field public static final WHAT_RSSI_OFF:I = 0xa

.field public static final WHAT_RSSI_ON:I = 0x9

.field public static final WHAT_RSSI_REPORT:I = 0xb

.field public static final WHAT_SCAN:I = 0x6a

.field public static final WHAT_SEEK_DOWN:I = 0x4

.field public static final WHAT_SEEK_UP:I = 0x3

.field public static final WHAT_SPEAKER:I = 0x68

.field public static final WHAT_SWITCH_MONO_STEREO:I = 0x6

.field public static final WHAT_SWITCH_TURN:I = 0x69

.field public static final WHAT_TUNE:I = 0x5

.field public static final WHAT_TURN_OFF:I = 0x2

.field public static final WHAT_TURN_ON:I = 0x1

.field public static final WHAT_UNMUTE:I = 0x8

.field public static final WHAT_WIDGET_BACKGROUND:I = 0x6d

.field public static final WHAT_WIDGET_FOREGROUND:I = 0x6c


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
