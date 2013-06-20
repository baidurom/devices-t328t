.class Lcom/htc/fm/activity/FMRadioEdit$2;
.super Ljava/lang/Object;
.source "FMRadioEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/activity/FMRadioEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/activity/FMRadioEdit;


# direct methods
.method constructor <init>(Lcom/htc/fm/activity/FMRadioEdit;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/htc/fm/activity/FMRadioEdit$2;->this$0:Lcom/htc/fm/activity/FMRadioEdit;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 140
    const-string v0, "FMRadioEdit"

    const-string v1, "+mOnClickListener.onClick()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioEdit$2;->this$0:Lcom/htc/fm/activity/FMRadioEdit;

    #calls: Lcom/htc/fm/activity/FMRadioEdit;->hideIME()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioEdit;->access$000(Lcom/htc/fm/activity/FMRadioEdit;)V

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioEdit$2;->this$0:Lcom/htc/fm/activity/FMRadioEdit;

    invoke-virtual {v0}, Lcom/htc/fm/activity/FMRadioEdit;->finish()V

    .line 148
    const-string v0, "FMRadioEdit"

    const-string v1, "-mOnClickListener.onClick()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioEdit$2;->this$0:Lcom/htc/fm/activity/FMRadioEdit;

    #calls: Lcom/htc/fm/activity/FMRadioEdit;->savePresetName()V
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioEdit;->access$100(Lcom/htc/fm/activity/FMRadioEdit;)V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x2010001
        :pswitch_0
    .end packed-switch
.end method
