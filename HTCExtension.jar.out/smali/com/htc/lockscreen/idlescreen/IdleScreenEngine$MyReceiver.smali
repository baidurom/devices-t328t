.class final Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IdleScreenEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 747
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$MyReceiver;->this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 754
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$MyReceiver;->this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    .line 756
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$MyReceiver;->this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->reportVisibility()V

    .line 757
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$MyReceiver;->this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$MyReceiver;->this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    iget-boolean v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onScreenOnOffChanged(Z)V

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$MyReceiver;->this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    .line 760
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$MyReceiver;->this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->reportVisibility()V

    .line 761
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$MyReceiver;->this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$MyReceiver;->this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    iget-boolean v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onScreenOnOffChanged(Z)V

    goto :goto_0
.end method
