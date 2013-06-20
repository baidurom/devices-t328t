.class Lcom/htc/fm/activity/FMRadioPresets$5;
.super Ljava/lang/Object;
.source "FMRadioPresets.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/activity/FMRadioPresets;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/activity/FMRadioPresets;


# direct methods
.method constructor <init>(Lcom/htc/fm/activity/FMRadioPresets;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/htc/fm/activity/FMRadioPresets$5;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 301
    const-string v0, "FMRadioPresets"

    const-string v1, "+mListView.DeleteAnimationListener.onAnimationEnd()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets$5;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    #getter for: Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioPresets;->access$100(Lcom/htc/fm/activity/FMRadioPresets;)Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->setIgnoreContentChanged(Z)V

    .line 303
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets$5;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    const v1, 0x7f040028

    #calls: Lcom/htc/fm/activity/FMRadioPresets;->setActionBarTitle(I)V
    invoke-static {v0, v1}, Lcom/htc/fm/activity/FMRadioPresets;->access$300(Lcom/htc/fm/activity/FMRadioPresets;I)V

    .line 304
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets$5;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    #calls: Lcom/htc/fm/activity/FMRadioPresets;->changeListType(I)V
    invoke-static {v0, v2}, Lcom/htc/fm/activity/FMRadioPresets;->access$400(Lcom/htc/fm/activity/FMRadioPresets;I)V

    .line 305
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets$5;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    invoke-virtual {v0}, Lcom/htc/fm/activity/FMRadioPresets;->checkListData()V

    .line 306
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets$5;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    #calls: Lcom/htc/fm/activity/FMRadioPresets;->actionBarExtEnableHTCLandscape(Z)V
    invoke-static {v0, v2}, Lcom/htc/fm/activity/FMRadioPresets;->access$500(Lcom/htc/fm/activity/FMRadioPresets;Z)V

    .line 307
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets$5;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    #getter for: Lcom/htc/fm/activity/FMRadioPresets;->mBtnCancel:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioPresets;->access$600(Lcom/htc/fm/activity/FMRadioPresets;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 308
    const-string v0, "FMRadioPresets"

    const-string v1, "-mListView.DeleteAnimationListener.onAnimationEnd()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method
