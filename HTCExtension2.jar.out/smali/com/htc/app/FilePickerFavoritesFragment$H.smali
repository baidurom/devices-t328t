.class Lcom/htc/app/FilePickerFavoritesFragment$H;
.super Landroid/os/Handler;
.source "FilePickerFavoritesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerFavoritesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerFavoritesFragment;


# direct methods
.method private constructor <init>(Lcom/htc/app/FilePickerFavoritesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/app/FilePickerFavoritesFragment$H;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/app/FilePickerFavoritesFragment;Lcom/htc/app/FilePickerFavoritesFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerFavoritesFragment$H;-><init>(Lcom/htc/app/FilePickerFavoritesFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 54
    :pswitch_0
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment$H;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    const/4 v1, 0x1

    #calls: Lcom/htc/app/FilePickerFavoritesFragment;->showRefreshAnimationOnFavoriteViewHeader(Z)V
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerFavoritesFragment;->access$200(Lcom/htc/app/FilePickerFavoritesFragment;Z)V

    .line 55
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment$H;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    #calls: Lcom/htc/app/FilePickerFavoritesFragment;->updateCountOfFavoritesListViewHeader()V
    invoke-static {v0}, Lcom/htc/app/FilePickerFavoritesFragment;->access$300(Lcom/htc/app/FilePickerFavoritesFragment;)V

    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment$H;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    const/4 v1, 0x0

    #calls: Lcom/htc/app/FilePickerFavoritesFragment;->showRefreshAnimationOnFavoriteViewHeader(Z)V
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerFavoritesFragment;->access$200(Lcom/htc/app/FilePickerFavoritesFragment;Z)V

    .line 59
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment$H;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    #calls: Lcom/htc/app/FilePickerFavoritesFragment;->updateCountOfFavoritesListViewHeader()V
    invoke-static {v0}, Lcom/htc/app/FilePickerFavoritesFragment;->access$300(Lcom/htc/app/FilePickerFavoritesFragment;)V

    goto :goto_0

    .line 62
    :pswitch_2
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment$H;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment$H;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    #getter for: Lcom/htc/app/FilePickerFavoritesFragment;->emptyView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/htc/app/FilePickerFavoritesFragment;->access$400(Lcom/htc/app/FilePickerFavoritesFragment;)Landroid/widget/TextView;

    move-result-object v1

    #calls: Lcom/htc/app/FilePickerFavoritesFragment;->setNoFileFoundText(Landroid/widget/TextView;)V
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerFavoritesFragment;->access$500(Lcom/htc/app/FilePickerFavoritesFragment;Landroid/widget/TextView;)V

    goto :goto_0

    .line 65
    :pswitch_3
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment$H;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment$H;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    #getter for: Lcom/htc/app/FilePickerFavoritesFragment;->emptyView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/htc/app/FilePickerFavoritesFragment;->access$400(Lcom/htc/app/FilePickerFavoritesFragment;)Landroid/widget/TextView;

    move-result-object v1

    #calls: Lcom/htc/app/FilePickerFavoritesFragment;->setNoFileFoundTextGone(Landroid/widget/TextView;)V
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerFavoritesFragment;->access$600(Lcom/htc/app/FilePickerFavoritesFragment;Landroid/widget/TextView;)V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
