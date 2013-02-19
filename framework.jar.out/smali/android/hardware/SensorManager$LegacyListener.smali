.class Landroid/hardware/SensorManager$LegacyListener;
.super Ljava/lang/Object;
.source "SensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyListener"
.end annotation


# instance fields
.field private mSensors:I

.field private mTarget:Landroid/hardware/SensorListener;

.field private mValues:[F

.field private final mYawfilter:Landroid/hardware/SensorManager$LmsFilter;

.field final synthetic this$0:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorListener;)V
    .locals 2
    .parameter
    .parameter "target"

    .prologue
    .line 1689
    iput-object p1, p0, Landroid/hardware/SensorManager$LegacyListener;->this$0:Landroid/hardware/SensorManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1682
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/hardware/SensorManager$LegacyListener;->mValues:[F

    .line 1686
    new-instance v0, Landroid/hardware/SensorManager$LmsFilter;

    iget-object v1, p0, Landroid/hardware/SensorManager$LegacyListener;->this$0:Landroid/hardware/SensorManager;

    invoke-direct {v0, v1}, Landroid/hardware/SensorManager$LmsFilter;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v0, p0, Landroid/hardware/SensorManager$LegacyListener;->mYawfilter:Landroid/hardware/SensorManager$LmsFilter;

    .line 1690
    iput-object p2, p0, Landroid/hardware/SensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    .line 1691
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    .line 1692
    return-void
.end method

.method private mapSensorDataToWindow(I[FI)V
    .locals 8
    .parameter "sensor"
    .parameter "values"
    .parameter "orientation"

    .prologue
    const/high16 v7, 0x4334

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1762
    aget v0, p2, v4

    .line 1763
    .local v0, x:F
    aget v1, p2, v5

    .line 1764
    .local v1, y:F
    aget v2, p2, v6

    .line 1766
    .local v2, z:F
    sparse-switch p1, :sswitch_data_0

    .line 1781
    :goto_0
    aput v0, p2, v4

    .line 1782
    aput v1, p2, v5

    .line 1783
    aput v2, p2, v6

    .line 1784
    const/4 v3, 0x3

    aput v0, p2, v3

    .line 1785
    const/4 v3, 0x4

    aput v1, p2, v3

    .line 1786
    const/4 v3, 0x5

    aput v2, p2, v3

    .line 1788
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_0

    .line 1790
    sparse-switch p1, :sswitch_data_1

    .line 1805
    :cond_0
    :goto_1
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_1

    .line 1806
    aget v0, p2, v4

    .line 1807
    aget v1, p2, v5

    .line 1808
    aget v2, p2, v6

    .line 1810
    sparse-switch p1, :sswitch_data_2

    .line 1825
    :cond_1
    :goto_2
    return-void

    .line 1769
    :sswitch_0
    neg-float v2, v2

    .line 1770
    goto :goto_0

    .line 1772
    :sswitch_1
    neg-float v0, v0

    .line 1773
    neg-float v1, v1

    .line 1774
    neg-float v2, v2

    .line 1775
    goto :goto_0

    .line 1777
    :sswitch_2
    neg-float v0, v0

    .line 1778
    neg-float v1, v1

    goto :goto_0

    .line 1793
    :sswitch_3
    neg-float v3, v1

    aput v3, p2, v4

    .line 1794
    aput v0, p2, v5

    .line 1795
    aput v2, p2, v6

    goto :goto_1

    .line 1799
    :sswitch_4
    const/high16 v3, 0x4387

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    const/16 v3, 0x5a

    :goto_3
    int-to-float v3, v3

    add-float/2addr v3, v0

    aput v3, p2, v4

    .line 1800
    aput v2, p2, v5

    .line 1801
    aput v1, p2, v6

    goto :goto_1

    .line 1799
    :cond_2
    const/16 v3, -0x10e

    goto :goto_3

    .line 1813
    :sswitch_5
    neg-float v3, v0

    aput v3, p2, v4

    .line 1814
    neg-float v3, v1

    aput v3, p2, v5

    .line 1815
    aput v2, p2, v6

    goto :goto_2

    .line 1819
    :sswitch_6
    cmpl-float v3, v0, v7

    if-ltz v3, :cond_3

    sub-float v3, v0, v7

    :goto_4
    aput v3, p2, v4

    .line 1820
    neg-float v3, v1

    aput v3, p2, v5

    .line 1821
    neg-float v3, v2

    aput v3, p2, v6

    goto :goto_2

    .line 1819
    :cond_3
    add-float v3, v0, v7

    goto :goto_4

    .line 1766
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x80 -> :sswitch_0
    .end sparse-switch

    .line 1790
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x8 -> :sswitch_3
        0x80 -> :sswitch_4
    .end sparse-switch

    .line 1810
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x8 -> :sswitch_5
        0x80 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 1724
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getLegacyType()I

    move-result v1

    invoke-interface {v0, v1, p2}, Landroid/hardware/SensorListener;->onAccuracyChanged(II)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1729
    :goto_0
    return-void

    .line 1725
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1733
    iget-object v1, p0, Landroid/hardware/SensorManager$LegacyListener;->mValues:[F

    .line 1734
    .local v1, v:[F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    aput v2, v1, v6

    .line 1735
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    aput v2, v1, v7

    .line 1736
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    aput v2, v1, v3

    .line 1737
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getLegacyType()I

    move-result v0

    .line 1738
    .local v0, legacyType:I
    invoke-static {}, Landroid/hardware/SensorManager;->getRotation()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/SensorManager$LegacyListener;->mapSensorDataToWindow(I[FI)V

    .line 1739
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1740
    iget v2, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 1741
    iget-object v2, p0, Landroid/hardware/SensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    const/16 v3, 0x80

    invoke-interface {v2, v3, v1}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    .line 1743
    :cond_0
    iget v2, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 1744
    iget-object v2, p0, Landroid/hardware/SensorManager$LegacyListener;->mYawfilter:Landroid/hardware/SensorManager$LmsFilter;

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    aget v5, v1, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager$LmsFilter;->filter(JF)F

    move-result v2

    aput v2, v1, v6

    .line 1745
    iget-object v2, p0, Landroid/hardware/SensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {v2, v7, v1}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    .line 1750
    :cond_1
    :goto_0
    return-void

    .line 1748
    :cond_2
    iget-object v2, p0, Landroid/hardware/SensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {v2, v0, v1}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    goto :goto_0
.end method

.method registerSensor(I)V
    .locals 1
    .parameter "legacyType"

    .prologue
    .line 1695
    iget v0, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    .line 1696
    return-void
.end method

.method unregisterSensor(I)Z
    .locals 3
    .parameter "legacyType"

    .prologue
    .line 1709
    const-string v0, "SensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterSensor: mSensors = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", legacyType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    iget v0, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 1712
    iget v0, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    .line 1713
    const-string v0, "SensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterSensor: After modify mSensors = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    const/4 v0, 0x1

    .line 1717
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
