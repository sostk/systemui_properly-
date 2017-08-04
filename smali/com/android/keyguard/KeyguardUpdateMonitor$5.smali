.class Lcom/android/keyguard/KeyguardUpdateMonitor$5;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 1896
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 2
    .param p1, "acquireInfo"    # I

    .prologue
    .line 1926
    const-string/jumbo v0, "KeyguardUpdateMonitor"

    const-string/jumbo v1, "onAuthenticationAcquired"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap9(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    .line 1925
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 1919
    const-string/jumbo v0, "KeyguardUpdateMonitor"

    const-string/jumbo v1, "onAuthenticationError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    const-string/jumbo v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "msgId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap12(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V

    .line 1918
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .prologue
    .line 1900
    const-string/jumbo v0, "KeyguardUpdateMonitor"

    const-string/jumbo v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap10(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 1902
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get9(Lcom/android/keyguard/KeyguardUpdateMonitor;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set3(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    .line 1899
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 1913
    const-string/jumbo v0, "KeyguardUpdateMonitor"

    const-string/jumbo v1, "onAuthenticationHelp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap13(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V

    .line 1912
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 2
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .prologue
    .line 1907
    const-string/jumbo v0, "KeyguardUpdateMonitor"

    const-string/jumbo v1, "onAuthenticationSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap11(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .line 1906
    return-void
.end method
