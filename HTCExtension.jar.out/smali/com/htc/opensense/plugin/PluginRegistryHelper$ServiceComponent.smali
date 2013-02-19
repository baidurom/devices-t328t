.class public Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;
.super Ljava/lang/Object;
.source "PluginRegistryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/plugin/PluginRegistryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceComponent"
.end annotation


# instance fields
.field public accountType:Ljava/lang/String;

.field public cName:Landroid/content/ComponentName;

.field extra:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 260
    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getcName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;->cName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 0
    .parameter "accountType"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;->accountType:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setcName(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "cName"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;->cName:Landroid/content/ComponentName;

    .line 276
    return-void
.end method
