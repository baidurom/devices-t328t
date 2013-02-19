.class public abstract Lcom/htc/opensense/album/plugin/FriendListPluginBase;
.super Lcom/htc/opensense/album/plugin/BaseListPlugin;
.source "FriendListPluginBase.java"


# static fields
.field public static final MULTI_FRIEDNS_PARAM_NORMAL:I = 0x0

.field public static final MULTI_FRIEDNS_PARAM_SEARCH:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/opensense/album/plugin/IUIHandler;)V
    .locals 0
    .parameter "context"
    .parameter "uihandler"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/album/plugin/BaseListPlugin;-><init>(Landroid/content/Context;Lcom/htc/opensense/album/plugin/IUIHandler;)V

    .line 24
    return-void
.end method


# virtual methods
.method public abstract getFriends(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/plugin/PersonData;",
            ">;"
        }
    .end annotation
.end method

.method public getFriendsWithSelection(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .parameter "id"
    .parameter "param"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/plugin/PersonData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public onEnableMultipleFriends()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method
