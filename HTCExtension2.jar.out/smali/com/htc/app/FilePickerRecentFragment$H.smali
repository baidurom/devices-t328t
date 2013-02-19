.class Lcom/htc/app/FilePickerRecentFragment$H;
.super Landroid/os/Handler;
.source "FilePickerRecentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerRecentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerRecentFragment;


# direct methods
.method private constructor <init>(Lcom/htc/app/FilePickerRecentFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/app/FilePickerRecentFragment$H;->this$0:Lcom/htc/app/FilePickerRecentFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/app/FilePickerRecentFragment;Lcom/htc/app/FilePickerRecentFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerRecentFragment$H;-><init>(Lcom/htc/app/FilePickerRecentFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "m"

    .prologue
    const/4 v1, 0x0

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment$H;->this$0:Lcom/htc/app/FilePickerRecentFragment;

    const/4 v1, 0x1

    #calls: Lcom/htc/app/FilePickerRecentFragment;->showRefreshAnimationOnRecentViewHeader(Z)V
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerRecentFragment;->access$200(Lcom/htc/app/FilePickerRecentFragment;Z)V

    .line 58
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment$H;->this$0:Lcom/htc/app/FilePickerRecentFragment;

    #calls: Lcom/htc/app/FilePickerRecentFragment;->updateCountOfRecentListViewHeader()V
    invoke-static {v0}, Lcom/htc/app/FilePickerRecentFragment;->access$300(Lcom/htc/app/FilePickerRecentFragment;)V

    goto :goto_0

    .line 61
    :pswitch_1
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment$H;->this$0:Lcom/htc/app/FilePickerRecentFragment;

    #calls: Lcom/htc/app/FilePickerRecentFragment;->showRefreshAnimationOnRecentViewHeader(Z)V
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerRecentFragment;->access$200(Lcom/htc/app/FilePickerRecentFragment;Z)V

    .line 62
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment$H;->this$0:Lcom/htc/app/FilePickerRecentFragment;

    #calls: Lcom/htc/app/FilePickerRecentFragment;->updateCountOfRecentListViewHeader()V
    invoke-static {v0}, Lcom/htc/app/FilePickerRecentFragment;->access$300(Lcom/htc/app/FilePickerRecentFragment;)V

    goto :goto_0

    .line 65
    :pswitch_2
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment$H;->this$0:Lcom/htc/app/FilePickerRecentFragment;

    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment$H;->this$0:Lcom/htc/app/FilePickerRecentFragment;

    #getter for: Lcom/htc/app/FilePickerRecentFragment;->emptyView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/htc/app/FilePickerRecentFragment;->access$400(Lcom/htc/app/FilePickerRecentFragment;)Landroid/widget/TextView;

    move-result-object v1

    #calls: Lcom/htc/app/FilePickerRecentFragment;->setNoFileFoundText(Landroid/widget/TextView;)V
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerRecentFragment;->access$500(Lcom/htc/app/FilePickerRecentFragment;Landroid/widget/TextView;)V

    goto :goto_0

    .line 68
    :pswitch_3
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment$H;->this$0:Lcom/htc/app/FilePickerRecentFragment;

    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment$H;->this$0:Lcom/htc/app/FilePickerRecentFragment;

    #getter for: Lcom/htc/app/FilePickerRecentFragment;->emptyView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/htc/app/FilePickerRecentFragment;->access$400(Lcom/htc/app/FilePickerRecentFragment;)Landroid/widget/TextView;

    move-result-object v1

    #calls: Lcom/htc/app/FilePickerRecentFragment;->setNoFileFoundTextGone(Landroid/widget/TextView;)V
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerRecentFragment;->access$600(Lcom/htc/app/FilePickerRecentFragment;Landroid/widget/TextView;)V

    goto :goto_0

    .line 71
    :pswitch_4
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment$H;->this$0:Lcom/htc/app/FilePickerRecentFragment;

    #getter for: Lcom/htc/app/FilePickerRecentFragment;->mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;
    invoke-static {v0}, Lcom/htc/app/FilePickerRecentFragment;->access$700(Lcom/htc/app/FilePickerRecentFragment;)Lcom/htc/widget/HtcListItemSeparator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment$H;->this$0:Lcom/htc/app/FilePickerRecentFragment;

    #getter for: Lcom/htc/app/FilePickerRecentFragment;->mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;
    invoke-static {v0}, Lcom/htc/app/FilePickerRecentFragment;->access$700(Lcom/htc/app/FilePickerRecentFragment;)Lcom/htc/widget/HtcListItemSeparator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemSeparator;->setVisibility(I)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
