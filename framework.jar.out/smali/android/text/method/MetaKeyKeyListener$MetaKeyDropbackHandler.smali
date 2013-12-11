.class public Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;
.super Landroid/os/Handler;
.source "MetaKeyKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/MetaKeyKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MetaKeyDropbackHandler"
.end annotation


# static fields
.field private static final FALLBACK_INTERVAL:J = 0x1388L

.field private static final MSG_START_FALLBACK_TIMER:I


# instance fields
.field final synthetic this$0:Landroid/text/method/MetaKeyKeyListener;


# direct methods
.method protected constructor <init>(Landroid/text/method/MetaKeyKeyListener;)V
    .locals 0
    .parameter

    .prologue
    .line 755
    iput-object p1, p0, Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;->this$0:Landroid/text/method/MetaKeyKeyListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const v3, 0x2000011

    .line 763
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/text/Editable;

    if-eqz v2, :cond_0

    .line 764
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/text/Editable;

    .line 768
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_1

    .line 781
    .end local v0           #content:Landroid/text/Editable;
    :cond_0
    :goto_0
    return-void

    .line 772
    .restart local v0       #content:Landroid/text/Editable;
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_0

    .line 773
    invoke-virtual {p0}, Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;->removeAllMessage()V

    .line 774
    invoke-static {}, Landroid/text/method/MetaKeyKeyListener;->access$000()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 775
    .local v1, state:I
    if-ne v1, v3, :cond_2

    .line 776
    invoke-static {}, Landroid/text/method/MetaKeyKeyListener;->access$000()Ljava/lang/Object;

    move-result-object v2

    #calls: Landroid/text/method/MetaKeyKeyListener;->removeSpanAndLed(Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {v0, v2}, Landroid/text/method/MetaKeyKeyListener;->access$100(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 777
    :cond_2
    invoke-static {}, Landroid/text/method/MetaKeyKeyListener;->access$200()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 778
    if-ne v1, v3, :cond_0

    .line 779
    invoke-static {}, Landroid/text/method/MetaKeyKeyListener;->access$200()Ljava/lang/Object;

    move-result-object v2

    #calls: Landroid/text/method/MetaKeyKeyListener;->removeSpanAndLed(Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {v0, v2}, Landroid/text/method/MetaKeyKeyListener;->access$100(Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeAllMessage()V
    .locals 1

    .prologue
    .line 791
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 792
    return-void
.end method

.method public sendMetaKeyTimer(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 3
    .parameter "content"
    .parameter "what"

    .prologue
    .line 784
    invoke-static {}, Landroid/text/method/MetaKeyKeyListener;->access$000()Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    invoke-static {}, Landroid/text/method/MetaKeyKeyListener;->access$200()Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 785
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 788
    :cond_1
    return-void
.end method
