.class Lcom/meizu/keyguard/MzKeyguardSimPukView$2;
.super Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;
.source "MzKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzKeyguardSimPukView;->updateSim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardSimPukView;Lcom/meizu/keyguard/MzKeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardSimPukView;
    .param p2, "this$0_1"    # Lcom/meizu/keyguard/MzKeyguardSimPukView;
    .param p3, "$anonymous0"    # Ljava/lang/String;
    .param p4, "$anonymous1"    # Ljava/lang/String;
    .param p5, "$anonymous2"    # I

    .prologue
    .line 327
    iput-object p2, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;-><init>(Lcom/meizu/keyguard/MzKeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(II)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "attemptsRemaining"    # I

    .prologue
    .line 329
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    new-instance v1, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;-><init>(Lcom/meizu/keyguard/MzKeyguardSimPukView$2;II)V

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->post(Ljava/lang/Runnable;)Z

    .line 328
    return-void
.end method
