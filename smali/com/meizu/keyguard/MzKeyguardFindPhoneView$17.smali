.class Lcom/meizu/keyguard/MzKeyguardFindPhoneView$17;
.super Landroid/os/CountDownTimer;
.source "MzKeyguardFindPhoneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->handleEdittextLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardFindPhoneView;
    .param p2, "$anonymous0"    # J
    .param p4, "$anonymous1"    # J

    .prologue
    .line 925
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$17;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 939
    const-string/jumbo v1, "FindPhone"

    const-string/jumbo v2, "handleEdittextLockout(),onFinish()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$17;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get13(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Landroid/widget/EditText;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->find_phone_tips_enter_password:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 941
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const v2, 0x7fffffff

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 942
    .local v0, "filters":[Landroid/text/InputFilter;
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$17;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get13(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 938
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 928
    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    .line 929
    const-wide/32 v0, 0xea60

    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$17;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    long-to-int v1, p1

    div-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x3c

    invoke-static {v0, v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-set0(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;I)I

    .line 934
    :goto_0
    const-string/jumbo v0, "FindPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleEdittextLockout(),onTick(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", RemainMinutes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$17;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v2}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get0(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$17;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get13(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$17;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-virtual {v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->find_phone_tips_flyme_disable_today:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$17;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v4}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get0(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 927
    return-void

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$17;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v1, v2

    div-int/lit8 v1, v1, 0x3c

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-set0(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;I)I

    goto :goto_0
.end method
