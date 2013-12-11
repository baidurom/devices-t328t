.class public Lcom/htc/util/phone/PhoneUtils;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/phone/PhoneUtils$Project;,
        Lcom/htc/util/phone/PhoneUtils$Intents;
    }
.end annotation


# static fields
.field public static final ACTION_ANSWER_AS_VOICE_CALL:I = 0x6

.field public static final ACTION_ANSWER_RINGING_CALL:I = 0x1

.field public static final ACTION_REJECT_RINGING_CALL:I = 0x2

.field public static final ACTION_RING_AND_TURN_ON_SCREEN:I = 0x5

.field public static final ACTION_SEND_MSG:I = 0x4

.field public static final ACTION_SILENCE_RINGING_CALL:I = 0x3

.field public static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "com.htc.util.phone.PhoneUtils"

.field public static TEST_FLAG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/util/phone/PhoneUtils;->TEST_FLAG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBlurWallpaper(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"
    .parameter "isLandscape"

    .prologue
    .line 191
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/util/res/HtcResUtil;->getBlurWallpaper(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static final getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I
    .locals 1
    .parameter "conn"
    .parameter "callerInfo"

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 87
    .local v0, presentation:I
    :goto_0
    return v0

    .line 82
    .end local v0           #presentation:I
    :cond_0
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .restart local v0       #presentation:I
    goto :goto_0
.end method

.method public static getSkinPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 183
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {p0}, Lcom/htc/res/HtcResources;->getCurrentThemePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 91
    const-string v0, "com.htc.util.phone.PhoneUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method
