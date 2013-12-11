.class public Lcom/htc/opensense/plugin/PluginHostAdapter;
.super Landroid/widget/BaseAdapter;
.source "PluginHostAdapter.java"

# interfaces
.implements Lcom/htc/opensense/plugin/ActivityParms;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;,
        Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;
    }
.end annotation


# static fields
.field public static final KEY_PLUGIN_COMPONENT:Ljava/lang/String; = "pluginComp"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field mLayoutResId:I

.field private mServiceCompList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 43
    const v0, 0x1090003

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/PluginHostAdapter;-><init>(Landroid/app/Activity;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .parameter "activity"
    .parameter "layoutResId"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/plugin/PluginHostAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 29
    const v0, 0x1090003

    iput v0, p0, Lcom/htc/opensense/plugin/PluginHostAdapter;->mLayoutResId:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/plugin/PluginHostAdapter;->mServiceCompList:Ljava/util/List;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/plugin/PluginHostAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    iput p2, p0, Lcom/htc/opensense/plugin/PluginHostAdapter;->mLayoutResId:I

    .line 40
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/opensense/plugin/PluginHostAdapter;->mServiceCompList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/opensense/plugin/PluginHostAdapter;->mServiceCompList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 103
    int-to-long v0, p1

    return-wide v0
.end method

.method public getStartIntent(I)Landroid/content/Intent;
    .locals 4
    .parameter "position"

    .prologue
    .line 111
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v1, i:Landroid/content/Intent;
    const-string v2, "com.htc.opensense.START_ACTIVITY_IN_HOST_FRAME"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    iget-object v2, p0, Lcom/htc/opensense/plugin/PluginHostAdapter;->mServiceCompList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;

    .line 114
    .local v0, host:Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;
    iget-object v2, v0, Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 115
    const-string v2, "pluginComp"

    iget-object v3, v0, Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;->pluginName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 116
    const-string v2, "accountType"

    #getter for: Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;->accountType:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;->access$000(Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 63
    if-nez p2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/htc/opensense/plugin/PluginHostAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x1090003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 68
    :cond_0
    if-eqz p2, :cond_1

    .line 69
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 71
    .local v1, tv:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 72
    iget-object v2, p0, Lcom/htc/opensense/plugin/PluginHostAdapter;->mServiceCompList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;

    .line 73
    .local v0, sComp:Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;
    iget-object v2, v0, Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;->serviceTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 77
    .end local v0           #sComp:Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_1
    return-object p2
.end method

.method public updateList(Landroid/app/Activity;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "name"
    .parameter "accountType"

    .prologue
    .line 52
    new-instance v0, Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;

    invoke-direct {v0, p1, p2, p3}, Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 54
    .local v0, availHosts:Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;
    iput-object v0, p0, Lcom/htc/opensense/plugin/PluginHostAdapter;->mServiceCompList:Ljava/util/List;

    .line 56
    return-void
.end method
