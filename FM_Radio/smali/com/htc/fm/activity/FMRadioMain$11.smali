.class Lcom/htc/fm/activity/FMRadioMain$11;
.super Ljava/lang/Object;
.source "FMRadioMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/activity/FMRadioMain;->showNoHeadsetDialog()V
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
    .line 1065
    iput-object p1, p0, Lcom/htc/fm/activity/FMRadioMain$11;->this$0:Lcom/htc/fm/activity/FMRadioMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1067
    const-string v0, "FMRadioMain"

    const-string v1, "  DIALOG_NO_HEADSET onClick()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    return-void
.end method
