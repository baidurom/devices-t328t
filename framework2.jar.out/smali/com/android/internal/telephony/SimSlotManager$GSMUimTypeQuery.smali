.class Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;
.super Landroid/os/Handler;
.source "SimSlotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SimSlotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GSMUimTypeQuery"
.end annotation


# instance fields
.field private final EVENT_QUERY_GSM_UIM_TYPE:I

.field private final EVENT_READ_CDMA_IMSI_DONE:I

.field private final EVENT_READ_GSM_IMSI_DONE:I

.field private final EVENT_READ_GSM_IMSI_DONE_EXT:I

.field private final MAX_RETRY_TIME:I

.field private final QUERY_GSM_UIM_TYPE_DELAY:I

.field private final REQUERY_GSM_UIM_TYPE_DELAY:I

.field private gsmPhoneType:I

.field private mCIMSIDone:Z

.field private mCIMSIExist:Z

.field private mGIMSIDone:Z

.field private mGIMSIExist:Z

.field private mInvalid:Z

.field private mInvalidSub:Z

.field private mQueryUimTypeFlag:Z

.field public mQueryUimTypeRunnable:Ljava/lang/Runnable;

.field private mRetry:I

.field private mRunning:Z

.field private mSubGIMSIDone:Z

.field private mSubGIMSIExist:Z

.field final synthetic this$0:Lcom/android/internal/telephony/SimSlotManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SimSlotManager;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 623
    iput-object p1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 625
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->EVENT_QUERY_GSM_UIM_TYPE:I

    .line 627
    iput v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->EVENT_READ_CDMA_IMSI_DONE:I

    .line 628
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->EVENT_READ_GSM_IMSI_DONE:I

    .line 631
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->EVENT_READ_GSM_IMSI_DONE_EXT:I

    .line 633
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->QUERY_GSM_UIM_TYPE_DELAY:I

    .line 634
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->REQUERY_GSM_UIM_TYPE_DELAY:I

    .line 635
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->MAX_RETRY_TIME:I

    .line 636
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mQueryUimTypeFlag:Z

    .line 637
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRunning:Z

    .line 638
    iput v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRetry:I

    .line 641
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mCIMSIDone:Z

    .line 642
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mGIMSIDone:Z

    .line 643
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mCIMSIExist:Z

    .line 644
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mGIMSIExist:Z

    .line 647
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mSubGIMSIDone:Z

    .line 648
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mSubGIMSIExist:Z

    .line 651
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalid:Z

    .line 654
    iput v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->gsmPhoneType:I

    .line 655
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalidSub:Z

    .line 658
    new-instance v0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery$1;-><init>(Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mQueryUimTypeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/SimSlotManager;Lcom/android/internal/telephony/SimSlotManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;-><init>(Lcom/android/internal/telephony/SimSlotManager;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 623
    iget v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->gsmPhoneType:I

    return v0
.end method

.method private notifyClient()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 889
    const-string v0, "SSM"

    const-string v1, "Slot 2: notifyClient()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mCIMSIDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mGIMSIDone:Z

    if-nez v0, :cond_1

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 894
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mQueryUimTypeFlag:Z

    .line 896
    iput-boolean v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalid:Z

    .line 898
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mGIMSIExist:Z

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mCIMSIExist:Z

    if-nez v0, :cond_2

    .line 899
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalid:Z

    .line 902
    :cond_2
    const-string v0, "SSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slot 2: mInvalid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onFail()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 682
    const-string v0, "SSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query GSM UIM Type failed, retry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRetry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRetry:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mQueryUimTypeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 685
    iget v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRetry:I

    .line 696
    :goto_0
    return-void

    .line 687
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRunning:Z

    .line 688
    iput v3, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRetry:I

    .line 690
    iput-boolean v3, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalid:Z

    goto :goto_0
.end method

.method private onSuccess(Ljava/lang/Object;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 699
    check-cast p1, [I

    .end local p1
    check-cast p1, [I

    aget v0, p1, v4

    .line 701
    .local v0, type:I
    iput-boolean v5, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mQueryUimTypeFlag:Z

    .line 717
    const-string v1, "SSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GSM Uim type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 720
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalid:Z

    .line 722
    const-string v1, "SSM"

    const-string v2, "GSM got a SIM card"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :goto_0
    return-void

    .line 725
    :cond_1
    const-string v1, "SSM"

    const-string v2, "GSM Must requery PIN state now"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iput-boolean v5, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalid:Z

    goto :goto_0
.end method


# virtual methods
.method public clearQueryFlag()V
    .locals 2

    .prologue
    .line 817
    const-string v0, "SSM"

    const-string v1, "Clear Query flag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mQueryUimTypeFlag:Z

    .line 820
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRunning:Z

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {p0}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->stop()V

    .line 823
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 739
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 741
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 743
    .local v0, ar:Landroid/os/AsyncResult;
    const-string v2, "SSM"

    const-string v3, "EVENT_QUERY_GSM_UIM_TYPE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-boolean v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRunning:Z

    if-eqz v2, :cond_0

    .line 747
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 748
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->onFail()V

    goto :goto_0

    .line 750
    :cond_1
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 755
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    const-string v2, "SSM"

    const-string v3, "Slot 2: EVENT_READ_CDMA_IMSI_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 758
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mCIMSIDone:Z

    .line 760
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 761
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mCIMSIExist:Z

    .line 764
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->notifyClient()V

    goto :goto_0

    .line 768
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v2, "SSM"

    const-string v3, "Slot 2: EVENT_READ_GSM_IMSI_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 771
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mGIMSIDone:Z

    .line 773
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 774
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mGIMSIExist:Z

    .line 777
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->notifyClient()V

    goto :goto_0

    .line 782
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    const-string v2, "SSM"

    const-string v3, "receive EVENT_READ_GSM_IMSI_DONE_EXT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 784
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 786
    .local v1, phoneType:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 787
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mGIMSIDone:Z

    .line 788
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalid:Z

    .line 790
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 791
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mGIMSIExist:Z

    .line 792
    iput-boolean v5, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalid:Z

    goto :goto_0

    .line 796
    :cond_4
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 797
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mSubGIMSIDone:Z

    .line 798
    iput-boolean v5, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalidSub:Z

    .line 800
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 801
    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mSubGIMSIExist:Z

    .line 802
    iput-boolean v5, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalidSub:Z

    goto :goto_0

    .line 739
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isInvalidCard(I)Z
    .locals 2
    .parameter "phoneType"

    .prologue
    const/4 v0, 0x1

    .line 846
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 847
    iget-object v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I
    invoke-static {v1}, Lcom/android/internal/telephony/SimSlotManager;->access$900(Lcom/android/internal/telephony/SimSlotManager;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 848
    const/4 v0, 0x0

    .line 854
    :cond_0
    :goto_0
    return v0

    .line 850
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalid:Z

    goto :goto_0

    .line 851
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 852
    if-ne p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalid:Z

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mInvalidSub:Z

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 826
    const-string v0, "SSM"

    const-string v1, "Start GSM UIM Type querying"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mQueryUimTypeFlag:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I
    invoke-static {v0}, Lcom/android/internal/telephony/SimSlotManager;->access$900(Lcom/android/internal/telephony/SimSlotManager;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 829
    :cond_0
    const-string v0, "SSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRunning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mQueryUimTypeFlag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mQueryUimTypeFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPhoneTypeOfSlot1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I
    invoke-static {v2}, Lcom/android/internal/telephony/SimSlotManager;->access$900(Lcom/android/internal/telephony/SimSlotManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :goto_0
    return-void

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v0}, Lcom/android/internal/telephony/SimSlotManager;->access$700(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isSIMReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 834
    const-string v0, "SSM"

    const-string v1, "SIM not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 838
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRunning:Z

    .line 839
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRetry:I

    .line 841
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mQueryUimTypeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public startEx(I)Z
    .locals 4
    .parameter "phoneType"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 861
    const-string v2, "SSM"

    const-string v3, "StartEx GSM UIM Type querying"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 863
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->this$0:Lcom/android/internal/telephony/SimSlotManager;

    #getter for: Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I
    invoke-static {v2}, Lcom/android/internal/telephony/SimSlotManager;->access$900(Lcom/android/internal/telephony/SimSlotManager;)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 875
    :goto_0
    return v0

    .line 867
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 868
    iput p1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->gsmPhoneType:I

    .line 871
    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRunning:Z

    .line 872
    iput v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRetry:I

    .line 874
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mQueryUimTypeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v1

    .line 875
    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 880
    const-string v0, "SSM"

    const-string v1, "Stop GSM UIM Type querying"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iput-boolean v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRunning:Z

    .line 882
    iput v2, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mRetry:I

    .line 883
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->mQueryUimTypeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 884
    return-void
.end method
