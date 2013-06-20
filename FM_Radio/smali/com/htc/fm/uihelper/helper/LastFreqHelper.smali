.class public Lcom/htc/fm/uihelper/helper/LastFreqHelper;
.super Ljava/lang/Object;
.source "LastFreqHelper.java"


# static fields
.field private static final PREFS_KEY:Ljava/lang/String; = "freq"

.field private static final PREFS_NAME:Ljava/lang/String; = "last.freq"


# instance fields
.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "last.freq"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/uihelper/helper/LastFreqHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 17
    return-void
.end method


# virtual methods
.method public hasFreq()Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 28
    iget-object v1, p0, Lcom/htc/fm/uihelper/helper/LastFreqHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "freq"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 29
    .local v0, value:I
    if-ne v3, v0, :cond_0

    .line 30
    const/4 v1, 0x0

    .line 32
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public load()I
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/fm/uihelper/helper/LastFreqHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "freq"

    sget v2, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public save(I)V
    .locals 2
    .parameter "freq"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/fm/uihelper/helper/LastFreqHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "freq"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 21
    return-void
.end method
