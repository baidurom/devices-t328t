.class public Lcom/htc/fm/uihelper/helper/PowerStateHelper;
.super Ljava/lang/Object;
.source "PowerStateHelper.java"


# static fields
.field private static final PREFS_KEY:Ljava/lang/String; = "power"

.field private static final PREFS_NAME:Ljava/lang/String; = "power.state"


# instance fields
.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "power.state"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/uihelper/helper/PowerStateHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 15
    return-void
.end method


# virtual methods
.method public load()Z
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/fm/uihelper/helper/PowerStateHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "power"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public save(Z)V
    .locals 2
    .parameter "pIsPowerOn"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/fm/uihelper/helper/PowerStateHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "power"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    return-void
.end method
