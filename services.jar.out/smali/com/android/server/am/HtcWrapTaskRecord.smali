.class public Lcom/android/server/am/HtcWrapTaskRecord;
.super Ljava/lang/Object;
.source "HtcWrapTaskRecord.java"


# instance fields
.field public origActivity:Landroid/content/ComponentName;

.field public realActivity:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Lcom/android/server/am/TaskRecord;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/am/HtcWrapTaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 21
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/am/HtcWrapTaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 22
    return-void
.end method

.method public static create(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/HtcWrapTaskRecord;
    .locals 1
    .parameter "r"

    .prologue
    .line 12
    if-nez p0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/am/HtcWrapTaskRecord;

    invoke-direct {v0, p0}, Lcom/android/server/am/HtcWrapTaskRecord;-><init>(Lcom/android/server/am/TaskRecord;)V

    goto :goto_0
.end method
