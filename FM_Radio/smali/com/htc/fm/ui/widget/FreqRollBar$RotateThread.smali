.class Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
.super Ljava/lang/Thread;
.source "FreqRollBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/ui/widget/FreqRollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotateThread"
.end annotation


# instance fields
.field private TimeStampOfUIStartingAdjust:J

.field private bincrease:Z

.field private currentstarttime:I

.field private end:I

.field private from:I

.field private switcher:I

.field final synthetic this$0:Lcom/htc/fm/ui/widget/FreqRollBar;


# direct methods
.method private constructor <init>(Lcom/htc/fm/ui/widget/FreqRollBar;)V
    .locals 0
    .parameter

    .prologue
    .line 710
    iput-object p1, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->this$0:Lcom/htc/fm/ui/widget/FreqRollBar;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fm/ui/widget/FreqRollBar;Lcom/htc/fm/ui/widget/FreqRollBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 710
    invoke-direct {p0, p1}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;-><init>(Lcom/htc/fm/ui/widget/FreqRollBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0x12c

    const/16 v12, 0x64

    const/16 v11, 0x1f4

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 738
    const/4 v2, 0x0

    .line 741
    .local v2, count:I
    iget v3, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->from:I

    .line 742
    .local v3, moveindex:I
    const/16 v1, 0x32

    .line 743
    .local v1, FastRotationInterval:I
    const/16 v0, 0xa

    .line 745
    .local v0, DecreaseGapInterval:I
    iget-boolean v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->bincrease:Z

    if-eqz v6, :cond_10

    .line 748
    :cond_0
    new-instance v5, Lcom/htc/fm/ui/widget/RotateSeed;

    invoke-direct {v5}, Lcom/htc/fm/ui/widget/RotateSeed;-><init>()V

    .line 749
    .local v5, seed:Lcom/htc/fm/ui/widget/RotateSeed;
    iget-object v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->this$0:Lcom/htc/fm/ui/widget/FreqRollBar;

    #getter for: Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/fm/ui/widget/FreqRollBar;->access$100(Lcom/htc/fm/ui/widget/FreqRollBar;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x1f

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 750
    .local v4, msg:Landroid/os/Message;
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->switcher:I

    iput v6, v5, Lcom/htc/fm/ui/widget/RotateSeed;->Switcher:I

    .line 752
    const/16 v6, 0x9

    if-ne v3, v6, :cond_1

    .line 753
    const/4 v3, 0x0

    .line 754
    add-int/lit8 v2, v2, 0x1

    .line 760
    :goto_0
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    if-lt v6, v3, :cond_9

    .line 761
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    sub-int/2addr v6, v3

    const/4 v7, 0x3

    if-le v6, v7, :cond_2

    .line 762
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 763
    iput v11, v5, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 764
    iput v9, v5, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    .line 818
    :goto_1
    iput v3, v5, Lcom/htc/fm/ui/widget/RotateSeed;->number:I

    .line 819
    iget-wide v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->TimeStampOfUIStartingAdjust:J

    iput-wide v6, v5, Lcom/htc/fm/ui/widget/RotateSeed;->TimeStampOfUIStartingAdjust:J

    .line 820
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 822
    iget-object v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->this$0:Lcom/htc/fm/ui/widget/FreqRollBar;

    #getter for: Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/fm/ui/widget/FreqRollBar;->access$100(Lcom/htc/fm/ui/widget/FreqRollBar;)Landroid/os/Handler;

    move-result-object v6

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    int-to-long v7, v7

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 824
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    if-ne v3, v6, :cond_0

    .line 901
    :goto_2
    return-void

    .line 756
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 757
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 766
    :cond_2
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    if-ne v6, v3, :cond_4

    .line 767
    if-eq v2, v9, :cond_3

    .line 768
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit16 v6, v6, 0x154

    iput v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 769
    :cond_3
    iput v11, v5, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 770
    iput v9, v5, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto :goto_1

    .line 772
    :cond_4
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    sub-int/2addr v6, v3

    if-ne v6, v9, :cond_6

    .line 773
    if-eq v2, v9, :cond_5

    .line 774
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit16 v6, v6, 0x12c

    iput v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 775
    :cond_5
    const/16 v6, 0x154

    iput v6, v5, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 776
    iput v9, v5, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto :goto_1

    .line 777
    :cond_6
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    sub-int/2addr v6, v3

    if-ne v6, v10, :cond_8

    .line 778
    if-eq v2, v9, :cond_7

    .line 779
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit8 v6, v6, 0x64

    iput v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 780
    :cond_7
    iput v13, v5, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 781
    iput v9, v5, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto :goto_1

    .line 783
    :cond_8
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 784
    iput v12, v5, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 785
    iput v9, v5, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto :goto_1

    .line 791
    :cond_9
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    add-int/lit8 v6, v6, 0xa

    sub-int/2addr v6, v3

    const/4 v7, 0x3

    if-le v6, v7, :cond_a

    .line 792
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 793
    iput v11, v5, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 794
    iput v9, v5, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto :goto_1

    .line 797
    :cond_a
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    add-int/lit8 v6, v6, 0xa

    sub-int/2addr v6, v3

    if-ne v6, v9, :cond_c

    .line 798
    if-eq v2, v9, :cond_b

    .line 799
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit16 v6, v6, 0x12c

    iput v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 800
    :cond_b
    const/16 v6, 0x154

    iput v6, v5, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 801
    iput v9, v5, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto/16 :goto_1

    .line 802
    :cond_c
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    add-int/lit8 v6, v6, 0xa

    sub-int/2addr v6, v3

    if-ne v6, v10, :cond_e

    .line 803
    if-eq v2, v9, :cond_d

    .line 804
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit8 v6, v6, 0x64

    iput v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 805
    :cond_d
    iput v13, v5, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 806
    iput v9, v5, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto/16 :goto_1

    .line 808
    :cond_e
    if-eq v2, v9, :cond_f

    .line 809
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 810
    :cond_f
    iput v12, v5, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 811
    iput v9, v5, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto/16 :goto_1

    .line 827
    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #seed:Lcom/htc/fm/ui/widget/RotateSeed;
    :cond_10
    new-instance v5, Lcom/htc/fm/ui/widget/RotateSeed;

    invoke-direct {v5}, Lcom/htc/fm/ui/widget/RotateSeed;-><init>()V

    .line 828
    .restart local v5       #seed:Lcom/htc/fm/ui/widget/RotateSeed;
    iget-object v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->this$0:Lcom/htc/fm/ui/widget/FreqRollBar;

    #getter for: Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/fm/ui/widget/FreqRollBar;->access$100(Lcom/htc/fm/ui/widget/FreqRollBar;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x1f

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 829
    .restart local v4       #msg:Landroid/os/Message;
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->switcher:I

    iput v6, v5, Lcom/htc/fm/ui/widget/RotateSeed;->Switcher:I

    .line 831
    if-nez v3, :cond_11

    .line 832
    const/16 v3, 0x9

    .line 833
    add-int/lit8 v2, v2, 0x1

    .line 839
    :goto_3
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    if-lt v3, v6, :cond_19

    .line 840
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    sub-int v6, v3, v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_12

    .line 841
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 842
    iput v11, v5, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 843
    iput v9, v5, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    .line 895
    :goto_4
    iput v3, v5, Lcom/htc/fm/ui/widget/RotateSeed;->number:I

    .line 896
    iget-wide v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->TimeStampOfUIStartingAdjust:J

    iput-wide v6, v5, Lcom/htc/fm/ui/widget/RotateSeed;->TimeStampOfUIStartingAdjust:J

    .line 897
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 898
    iget-object v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->this$0:Lcom/htc/fm/ui/widget/FreqRollBar;

    #getter for: Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/fm/ui/widget/FreqRollBar;->access$100(Lcom/htc/fm/ui/widget/FreqRollBar;)Landroid/os/Handler;

    move-result-object v6

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    int-to-long v7, v7

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 899
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    if-ne v3, v6, :cond_10

    goto/16 :goto_2

    .line 835
    :cond_11
    add-int/lit8 v3, v3, -0x1

    .line 836
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 846
    :cond_12
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    if-ne v6, v3, :cond_14

    .line 847
    if-eq v2, v9, :cond_13

    .line 848
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit16 v6, v6, 0x154

    iput v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 849
    :cond_13
    iput v11, v5, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 850
    iput v9, v5, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto :goto_4

    .line 851
    :cond_14
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    sub-int v6, v3, v6

    if-ne v6, v9, :cond_16

    .line 852
    if-eq v2, v9, :cond_15

    .line 853
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit16 v6, v6, 0x12c

    iput v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 854
    :cond_15
    const/16 v6, 0x154

    iput v6, v5, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 855
    iput v9, v5, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto :goto_4

    .line 856
    :cond_16
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    sub-int v6, v3, v6

    if-ne v6, v10, :cond_18

    .line 857
    if-eq v2, v9, :cond_17

    .line 858
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit8 v6, v6, 0x64

    iput v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 859
    :cond_17
    iput v13, v5, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 860
    iput v9, v5, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto :goto_4

    .line 862
    :cond_18
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 863
    iput v12, v5, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 864
    iput v9, v5, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto :goto_4

    .line 870
    :cond_19
    add-int/lit8 v6, v3, 0xa

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    sub-int/2addr v6, v7

    if-le v6, v10, :cond_1a

    .line 871
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 872
    const/16 v6, 0x46

    iput v6, v5, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 873
    iput v9, v5, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto :goto_4

    .line 876
    :cond_1a
    add-int/lit8 v6, v3, 0xa

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    sub-int/2addr v6, v7

    if-ne v6, v9, :cond_1c

    .line 877
    if-eq v2, v9, :cond_1b

    .line 878
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit16 v6, v6, 0x12c

    iput v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 879
    :cond_1b
    const/16 v6, 0x154

    iput v6, v5, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 880
    iput v9, v5, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto/16 :goto_4

    .line 881
    :cond_1c
    add-int/lit8 v6, v3, 0xa

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    sub-int/2addr v6, v7

    if-ne v6, v10, :cond_1e

    .line 882
    if-eq v2, v9, :cond_1d

    .line 883
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit8 v6, v6, 0x64

    iput v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 884
    :cond_1d
    iput v13, v5, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 885
    iput v9, v5, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto/16 :goto_4

    .line 887
    :cond_1e
    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 888
    iput v12, v5, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 889
    iput v9, v5, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto/16 :goto_4
.end method

.method public setNextRotateTime(I)V
    .locals 0
    .parameter "NextRotateTime"

    .prologue
    .line 734
    iput p1, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 735
    return-void
.end method

.method public setSwitcher(IZII)V
    .locals 3
    .parameter "Switcher"
    .parameter "bIncrease"
    .parameter "From"
    .parameter "End"

    .prologue
    .line 719
    iput p1, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->switcher:I

    .line 720
    iput-boolean p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->bincrease:Z

    .line 721
    iput p3, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->from:I

    .line 722
    iput p4, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    .line 723
    const-string v0, "FMRadio_FreqRollBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RotateThread][setSwitcher] switcher:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->switcher:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bincrease:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->bincrease:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->from:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    return-void
.end method

.method public setTimeStampOfUIStartingAdjust(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 728
    iput-wide p1, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->TimeStampOfUIStartingAdjust:J

    .line 729
    return-void
.end method
