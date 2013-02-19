.class Lcom/htc/app/FilePickerCore$MoreExpanedObject$3;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerCore$MoreExpanedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V
    .locals 0
    .parameter

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$3;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$3;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    #getter for: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    invoke-static {v0}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$2200(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2030
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$3;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    #getter for: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    invoke-static {v0}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$2200(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/FilePickerFolderAdapter;->isCanSort()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2031
    const/4 v0, 0x1

    .line 2033
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
