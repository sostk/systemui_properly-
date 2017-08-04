.class Lcom/meizu/keyguard/MzKeyguardSimPinView$3;
.super Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;
.source "MzKeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzKeyguardSimPinView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardSimPinView;Lcom/meizu/keyguard/MzKeyguardSimPinView;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardSimPinView;
    .param p2, "this$0_1"    # Lcom/meizu/keyguard/MzKeyguardSimPinView;
    .param p3, "$anonymous0"    # Ljava/lang/String;
    .param p4, "$anonymous1"    # I

    .prologue
    .line 291
    iput-object p2, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    invoke-direct {p0, p1, p3, p4}, Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;-><init>(Lcom/meizu/keyguard/MzKeyguardSimPinView;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method onSimCheckResponse(II)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "attemptsRemaining"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    new-instance v1, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;-><init>(Lcom/meizu/keyguard/MzKeyguardSimPinView$3;II)V

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->post(Ljava/lang/Runnable;)Z

    .line 292
    return-void
.end method
