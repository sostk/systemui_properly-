.class Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin$2;
.super Ljava/lang/Object;
.source "MzKeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin$2;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin$2;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;->onSimCheckResponse(II)V

    .line 242
    return-void
.end method
