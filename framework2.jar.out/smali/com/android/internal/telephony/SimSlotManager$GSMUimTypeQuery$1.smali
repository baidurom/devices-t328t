.class Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery$1;
.super Ljava/lang/Object;
.source "SimSlotManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;)V
    .locals 0
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery$1;->this$1:Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 660
    const-string v1, "SSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query GSM UIM Type, gsmPhontType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery$1;->this$1:Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;

    #getter for: Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->gsmPhoneType:I
    invoke-static {v3}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->access$600(Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 665
    iget-object v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery$1;->this$1:Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;

    iget-object v1, v1, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v1}, Lcom/android/internal/telephony/SimSlotManager;->access$700(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    iget-object v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery$1;->this$1:Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;

    #getter for: Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->gsmPhoneType:I
    invoke-static {v1}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->access$600(Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 672
    iget-object v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery$1;->this$1:Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;

    iget-object v1, v1, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v1}, Lcom/android/internal/telephony/SimSlotManager;->access$700(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    goto :goto_0

    .line 674
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery$1;->this$1:Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;

    iget-object v1, v1, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mSubGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v1}, Lcom/android/internal/telephony/SimSlotManager;->access$800(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    goto :goto_0
.end method
