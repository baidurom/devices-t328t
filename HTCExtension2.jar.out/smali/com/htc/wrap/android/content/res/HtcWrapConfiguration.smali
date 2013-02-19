.class public Lcom/htc/wrap/android/content/res/HtcWrapConfiguration;
.super Ljava/lang/Object;
.source "HtcWrapConfiguration.java"


# static fields
.field public static final FONTSIZE_HUGE:I = 0x6

.field public static final FONTSIZE_LARGE:I = 0x4

.field public static final FONTSIZE_LARGEST:I = 0x5

.field public static final FONTSIZE_NORMAL:I = 0x3

.field public static final FONTSIZE_SMALL:I = 0x2

.field public static final FONTSIZE_SMALLEST:I = 0x1

.field public static final FONTSIZE_UNDEFINED:I = 0x0

.field public static final SKIN_UNDEFINED:Ljava/lang/String; = "default"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFontsizeValue(Landroid/content/res/Configuration;)I
    .locals 1
    .parameter "conf"

    .prologue
    .line 38
    if-eqz p0, :cond_0

    .line 39
    iget v0, p0, Landroid/content/res/Configuration;->fontsize:I

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSkinValue(Landroid/content/res/Configuration;)Ljava/lang/String;
    .locals 1
    .parameter "conf"

    .prologue
    .line 54
    if-eqz p0, :cond_0

    .line 55
    iget-object v0, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "default"

    goto :goto_0
.end method

.method public static getUserSetLocale(Landroid/content/res/Configuration;)Z
    .locals 1
    .parameter "conf"

    .prologue
    .line 26
    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    return v0
.end method

.method public static setFontsizeValue(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 1
    .parameter "conf"
    .parameter "newValue"

    .prologue
    .line 45
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    .line 48
    iput p1, p0, Landroid/content/res/Configuration;->fontsize:I

    .line 50
    :cond_0
    return-object p0
.end method

.method public static setSkinValue(Landroid/content/res/Configuration;Ljava/lang/String;)Landroid/content/res/Configuration;
    .locals 1
    .parameter "conf"
    .parameter "newValue"

    .prologue
    .line 65
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iput-object p1, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 68
    :cond_0
    return-object p0
.end method

.method public static setUserSetLocale(Landroid/content/res/Configuration;Z)V
    .locals 0
    .parameter "conf"
    .parameter "bool"

    .prologue
    .line 33
    iput-boolean p1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 34
    return-void
.end method
