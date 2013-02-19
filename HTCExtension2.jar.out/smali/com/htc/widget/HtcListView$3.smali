.class Lcom/htc/widget/HtcListView$3;
.super Ljava/lang/Object;
.source "HtcListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcListView;)V
    .locals 0
    .parameter

    .prologue
    .line 4533
    iput-object p1, p0, Lcom/htc/widget/HtcListView$3;->this$0:Lcom/htc/widget/HtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4535
    iget-object v0, p0, Lcom/htc/widget/HtcListView$3;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mIntroAnimationType:I
    invoke-static {v0}, Lcom/htc/widget/HtcListView;->access$700(Lcom/htc/widget/HtcListView;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4553
    :goto_0
    return-void

    .line 4537
    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/HtcListView$3;->this$0:Lcom/htc/widget/HtcListView;

    #calls: Lcom/htc/widget/HtcListView;->playDefaultIntroAnimation()V
    invoke-static {v0}, Lcom/htc/widget/HtcListView;->access$800(Lcom/htc/widget/HtcListView;)V

    goto :goto_0

    .line 4540
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/HtcListView$3;->this$0:Lcom/htc/widget/HtcListView;

    #calls: Lcom/htc/widget/HtcListView;->playDownIntroAnimation()V
    invoke-static {v0}, Lcom/htc/widget/HtcListView;->access$900(Lcom/htc/widget/HtcListView;)V

    goto :goto_0

    .line 4543
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/HtcListView$3;->this$0:Lcom/htc/widget/HtcListView;

    #calls: Lcom/htc/widget/HtcListView;->playUpIntroAnimation()V
    invoke-static {v0}, Lcom/htc/widget/HtcListView;->access$1000(Lcom/htc/widget/HtcListView;)V

    goto :goto_0

    .line 4546
    :pswitch_3
    iget-object v0, p0, Lcom/htc/widget/HtcListView$3;->this$0:Lcom/htc/widget/HtcListView;

    #calls: Lcom/htc/widget/HtcListView;->playRightIntroAnimation()V
    invoke-static {v0}, Lcom/htc/widget/HtcListView;->access$1100(Lcom/htc/widget/HtcListView;)V

    goto :goto_0

    .line 4549
    :pswitch_4
    iget-object v0, p0, Lcom/htc/widget/HtcListView$3;->this$0:Lcom/htc/widget/HtcListView;

    #calls: Lcom/htc/widget/HtcListView;->playLeftIntroAnimation()V
    invoke-static {v0}, Lcom/htc/widget/HtcListView;->access$1200(Lcom/htc/widget/HtcListView;)V

    goto :goto_0

    .line 4535
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
