.class public Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;
.super Ljava/lang/Object;
.source "CdmaSubscriptionInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CdmaSubscriptionInfo"


# instance fields
.field public mHomeNetworkId:[I

.field public mHomeSystemId:[I

.field public mMdn:Ljava/lang/String;

.field public mMin:Ljava/lang/String;

.field public mPrlVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    .line 26
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeNetworkId:[I

    .line 35
    return-void
.end method


# virtual methods
.method public isHomeSid(I)Z
    .locals 2
    .parameter "sid"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    if-eqz v1, :cond_1

    .line 119
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 121
    const/4 v1, 0x1

    .line 125
    .end local v0           #i:I
    :goto_1
    return v1

    .line 119
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isSidsAllZeros()Z
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    if-eqz v1, :cond_1

    .line 103
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    .line 105
    const/4 v1, 0x0

    .line 109
    .end local v0           #i:I
    :goto_1
    return v1

    .line 103
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public populateSubscriptionInfoFromRegistrationState([Ljava/lang/String;)V
    .locals 6
    .parameter "cdmaSubscriptionArray"

    .prologue
    const/4 v4, 0x0

    .line 39
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mMdn:Ljava/lang/String;

    .line 40
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    .line 41
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeNetworkId:[I

    .line 42
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mMin:Ljava/lang/String;

    .line 43
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mPrlVersion:Ljava/lang/String;

    .line 47
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p1, v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mMdn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    const/4 v4, 0x1

    :try_start_1
    aget-object v4, p1, v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, sid:[Ljava/lang/String;
    array-length v4, v3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    .line 56
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-ge v1, v4, :cond_0

    .line 58
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 56
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 48
    .end local v1           #i:I
    .end local v3           #sid:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 49
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "CdmaSubscriptionInfo"

    const-string v5, "error parsing mdn: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 59
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #i:I
    .restart local v3       #sid:[Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 60
    .local v0, ex:Ljava/lang/NumberFormatException;
    :try_start_3
    const-string v4, "CdmaSubscriptionInfo"

    const-string v5, "error parsing system id: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 64
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .end local v1           #i:I
    .end local v3           #sid:[Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 65
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "CdmaSubscriptionInfo"

    const-string v5, "error parsing system id: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x2

    :try_start_4
    aget-object v4, p1, v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, nid:[Ljava/lang/String;
    array-length v4, v2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeNetworkId:[I

    .line 72
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    array-length v4, v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-ge v1, v4, :cond_1

    .line 74
    :try_start_5
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeNetworkId:[I

    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 72
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 75
    :catch_3
    move-exception v0

    .line 76
    .local v0, ex:Ljava/lang/NumberFormatException;
    :try_start_6
    const-string v4, "CdmaSubscriptionInfo"

    const-string v5, "error parsing network id: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    .line 80
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .end local v1           #i:I
    .end local v2           #nid:[Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 81
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "CdmaSubscriptionInfo"

    const-string v5, "error parsing network id: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x3

    :try_start_7
    aget-object v4, p1, v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mMin:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 91
    :goto_5
    return-void

    .line 87
    :catch_5
    move-exception v0

    .line 88
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v4, "CdmaSubscriptionInfo"

    const-string v5, "error parsing min: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setPrlVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "prlVersion"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mPrlVersion:Ljava/lang/String;

    .line 97
    return-void
.end method
