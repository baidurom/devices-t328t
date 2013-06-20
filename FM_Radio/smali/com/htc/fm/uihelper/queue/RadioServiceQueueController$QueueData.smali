.class Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;
.super Ljava/lang/Object;
.source "RadioServiceQueueController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueueData"
.end annotation


# instance fields
.field private mCommand:I

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(ILandroid/content/Intent;)V
    .locals 4
    .parameter "command"
    .parameter "intent"

    .prologue
    .line 166
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput p1, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;->mCommand:I

    .line 168
    iput-object p2, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;->mIntent:Landroid/content/Intent;

    .line 169
    iget-object v1, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    iget v2, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;->mCommand:I

    if-ne v1, v2, :cond_0

    .line 170
    iget-object v1, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;->mIntent:Landroid/content/Intent;

    const-string v2, "freq"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 171
    .local v0, freq:I
    sget v1, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    if-le v1, v0, :cond_1

    .line 172
    const-string v1, "RadioServiceQueueController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong frequency("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") must between "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_END:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;->mIntent:Landroid/content/Intent;

    const-string v2, "freq"

    sget v3, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    .end local v0           #freq:I
    :cond_0
    :goto_0
    return-void

    .line 174
    .restart local v0       #freq:I
    :cond_1
    sget v1, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_END:I

    if-ge v1, v0, :cond_0

    .line 175
    const-string v1, "RadioServiceQueueController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong frequency("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") must between "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_END:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;->mIntent:Landroid/content/Intent;

    const-string v2, "freq"

    sget v3, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_END:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public getCommand()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;->mCommand:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getIntentCommand()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 190
    iget-object v1, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;->mIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 193
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;->mIntent:Landroid/content/Intent;

    const-string v2, "command"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getIntentFreq()I
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 198
    const/4 v0, -0x1

    .line 200
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;->mIntent:Landroid/content/Intent;

    const-string v1, "freq"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queue_command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;->getCommand()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;->getIntentCommand()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", freq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController$QueueData;->getIntentFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
