.class public Lcom/htc/wrap/android/net/HtcWrapNetworkTemplate;
.super Landroid/net/NetworkTemplate;
.source "HtcWrapNetworkTemplate.java"


# direct methods
.method private constructor <init>(Landroid/net/NetworkTemplate;)V
    .locals 2
    .parameter "network"

    .prologue
    .line 7
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;)V

    .line 8
    return-void
.end method

.method public static buildTemplateMobileCdma(Ljava/lang/String;)Lcom/htc/wrap/android/net/HtcWrapNetworkTemplate;
    .locals 2
    .parameter "subscriberId"

    .prologue
    .line 15
    new-instance v0, Lcom/htc/wrap/android/net/HtcWrapNetworkTemplate;

    invoke-static {p0}, Landroid/net/NetworkTemplate;->buildTemplateMobileCdma(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/wrap/android/net/HtcWrapNetworkTemplate;-><init>(Landroid/net/NetworkTemplate;)V

    return-object v0
.end method

.method public static buildTemplateMobileGsm(Ljava/lang/String;)Lcom/htc/wrap/android/net/HtcWrapNetworkTemplate;
    .locals 2
    .parameter "subscriberId"

    .prologue
    .line 19
    new-instance v0, Lcom/htc/wrap/android/net/HtcWrapNetworkTemplate;

    invoke-static {p0}, Landroid/net/NetworkTemplate;->buildTemplateMobileGsm(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/wrap/android/net/HtcWrapNetworkTemplate;-><init>(Landroid/net/NetworkTemplate;)V

    return-object v0
.end method

.method public static buildTemplateMobileSubGsm(Ljava/lang/String;)Lcom/htc/wrap/android/net/HtcWrapNetworkTemplate;
    .locals 2
    .parameter "subscriberId"

    .prologue
    .line 23
    new-instance v0, Lcom/htc/wrap/android/net/HtcWrapNetworkTemplate;

    invoke-static {p0}, Landroid/net/NetworkTemplate;->buildTemplateMobileSubGsm(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/wrap/android/net/HtcWrapNetworkTemplate;-><init>(Landroid/net/NetworkTemplate;)V

    return-object v0
.end method

.method public static buildTemplateWimax()Lcom/htc/wrap/android/net/HtcWrapNetworkTemplate;
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcom/htc/wrap/android/net/HtcWrapNetworkTemplate;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWimax()Landroid/net/NetworkTemplate;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/wrap/android/net/HtcWrapNetworkTemplate;-><init>(Landroid/net/NetworkTemplate;)V

    return-object v0
.end method
