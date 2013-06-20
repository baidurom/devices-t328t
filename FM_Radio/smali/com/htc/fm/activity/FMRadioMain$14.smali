.class Lcom/htc/fm/activity/FMRadioMain$14;
.super Ljava/lang/Object;
.source "FMRadioMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/activity/FMRadioMain;->showScanningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/activity/FMRadioMain;


# direct methods
.method constructor <init>(Lcom/htc/fm/activity/FMRadioMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/htc/fm/activity/FMRadioMain$14;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$14;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mServiceHelper:Lcom/htc/fm/ui/helper/ServiceHelper;
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$1200(Lcom/htc/fm/activity/FMRadioMain;)Lcom/htc/fm/ui/helper/ServiceHelper;

    move-result-object v0

    const/4 v1, -0x1

    const/16 v2, 0x6b

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/helper/ServiceHelper;->sendServiceWhat(II)V

    .line 1197
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioMain$14;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    #getter for: Lcom/htc/fm/activity/FMRadioMain;->mScanningDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/fm/activity/FMRadioMain;->access$4100(Lcom/htc/fm/activity/FMRadioMain;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1198
    return-void
.end method
