.class public Lcom/htc/wrap/com/android/internal/net/HtcWrapDomainNameValidator;
.super Ljava/lang/Object;
.source "HtcWrapDomainNameValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static match(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 1
    .parameter "certificate"
    .parameter "thisDomain"

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/android/internal/net/DomainNameValidator;->match(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
