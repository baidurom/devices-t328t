.class Lcom/htc/fm/activity/FMRadioPresets$2;
.super Ljava/lang/Object;
.source "FMRadioPresets.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/activity/FMRadioPresets;->setActionBar()V
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
    .line 249
    iput-object p1, p0, Lcom/htc/fm/activity/FMRadioPresets$2;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets$2;->this$0:Lcom/htc/fm/activity/FMRadioPresets;

    invoke-virtual {v0}, Lcom/htc/fm/activity/FMRadioPresets;->onBackPressed()V

    .line 253
    return-void
.end method
