.class Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;
.super Landroid/os/Handler;
.source "BroadcastManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/security/bm/BroadcastManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlacklistHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/security/bm/BroadcastManagerService;


# direct methods
.method constructor <init>(Lcom/baidu/security/bm/BroadcastManagerService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->this$0:Lcom/baidu/security/bm/BroadcastManagerService;

    .line 103
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 104
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 107
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 115
    .local v0, newPartApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/bm/AutoLaunchAppInfo;>;"
    invoke-static {v0}, Lcom/baidu/security/bm/AutoLaunchController;->updateBlackList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 124
    .end local v0           #newPartApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/bm/AutoLaunchAppInfo;>;"
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 125
    .local v2, packageNameArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/baidu/security/bm/SilentAppsController;->addCleanedApps(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 129
    .end local v2           #packageNameArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 130
    .local v1, packageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/security/bm/SilentAppsController;->removeCleanedApp(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    .end local v1           #packageName:Ljava/lang/String;
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 135
    .restart local v2       #packageNameArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/baidu/security/bm/LockedAppsController;->addLockedApps(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 139
    .end local v2           #packageNameArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 140
    .restart local v2       #packageNameArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/baidu/security/bm/LockedAppsController;->removeLockedApps(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
