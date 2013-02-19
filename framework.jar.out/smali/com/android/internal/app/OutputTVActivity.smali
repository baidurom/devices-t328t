.class public Lcom/android/internal/app/OutputTVActivity;
.super Ljava/lang/Object;
.source "OutputTVActivity.java"


# static fields
.field public static final INTENT_EXTRA_OUTPUTTV_RESULT:Ljava/lang/String; = "com.android.internal.app.intent.extra.OUTPUTTV_RESULT"

.field public static final INTENT_WIRELESS_DISPLAY_OUTPUTTV_RESULT:Ljava/lang/String; = "com.android.internal.app.intent.WIRELESS_DISPLAY_OUTPUTTV_RESULT"

.field public static final OUTPUTTV_ACTIVITY_RESULT_NO:I = 0x0

.field public static final OUTPUTTV_ACTIVITY_RESULT_YES:I = 0x1

.field public static final OUTPUTTV_OPTION_DEFAULT_NO:I = 0x2

.field public static final OUTPUTTV_OPTION_DEFAULT_YES:I = 0x1

.field public static final OUTPUTTV_OPTION_NODEFAULT:I = 0x0

.field public static final SETTINGS_SECURE_OUTPUTTV_DEFAULT_OPTION:Ljava/lang/String; = "outputtv_default_option"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultOption(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "outputtv_default_option"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
