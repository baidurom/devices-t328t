.class Lcom/android/server/HtcPMSExtension$LogRecord;
.super Ljava/lang/Object;
.source "HtcPMSExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcPMSExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogRecord"
.end annotation


# instance fields
.field final REPEAT_THRESHOLD:I

.field mLogBody:Ljava/lang/String;

.field mRepeat:I

.field mTAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/HtcPMSExtension;


# direct methods
.method public constructor <init>(Lcom/android/server/HtcPMSExtension;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "tag"
    .parameter "logBody"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/server/HtcPMSExtension$LogRecord;->this$0:Lcom/android/server/HtcPMSExtension;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/HtcPMSExtension$LogRecord;->REPEAT_THRESHOLD:I

    .line 18
    iput-object p2, p0, Lcom/android/server/HtcPMSExtension$LogRecord;->mTAG:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/android/server/HtcPMSExtension$LogRecord;->mLogBody:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/HtcPMSExtension$LogRecord;->mRepeat:I

    .line 21
    return-void
.end method

.method private isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "tag"
    .parameter "logBody"

    .prologue
    .line 24
    iget-object v1, p0, Lcom/android/server/HtcPMSExtension$LogRecord;->mTAG:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/HtcPMSExtension$LogRecord;->mLogBody:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 25
    .local v0, ret:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 26
    iget v1, p0, Lcom/android/server/HtcPMSExtension$LogRecord;->mRepeat:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/HtcPMSExtension$LogRecord;->mRepeat:I

    .line 28
    :cond_0
    return v0

    .line 24
    .end local v0           #ret:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOverThreshold()Z
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/HtcPMSExtension$LogRecord;->mRepeat:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "logBody"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/server/HtcPMSExtension$LogRecord;->mTAG:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/android/server/HtcPMSExtension$LogRecord;->mLogBody:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/HtcPMSExtension$LogRecord;->mRepeat:I

    .line 39
    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "logBody"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/server/HtcPMSExtension$LogRecord;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 43
    iget v0, p0, Lcom/android/server/HtcPMSExtension$LogRecord;->mRepeat:I

    if-lez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/server/HtcPMSExtension$LogRecord;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/HtcPMSExtension$LogRecord;->mLogBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (repeat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HtcPMSExtension$LogRecord;->mRepeat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/server/HtcPMSExtension$LogRecord;->update(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    :goto_0
    return-void

    .line 48
    :cond_2
    invoke-direct {p0}, Lcom/android/server/HtcPMSExtension$LogRecord;->isOverThreshold()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (repeat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/HtcPMSExtension$LogRecord;->mRepeat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/HtcPMSExtension$LogRecord;->mRepeat:I

    goto :goto_0
.end method
