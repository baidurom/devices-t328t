.class Lcom/htc/app/FilePickerCore$7;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerCore;->showLocalFilePickerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerCore;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter

    .prologue
    .line 1429
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$7;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "tabId"

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$7;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->showViewByTab(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/htc/app/FilePickerCore;->access$1600(Lcom/htc/app/FilePickerCore;Ljava/lang/String;)V

    .line 1432
    return-void
.end method
