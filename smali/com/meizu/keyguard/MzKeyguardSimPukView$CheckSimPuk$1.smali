.class Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk$1;
.super Ljava/lang/Object;
.source "MzKeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;

.field final synthetic val$result:[I


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;[I)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;
    .param p2, "val$result"    # [I

    .prologue
    .line 274
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;

    iput-object p2, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk$1;->val$result:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 276
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk$1;->val$result:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk$1;->val$result:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;->onSimLockChangedResponse(II)V

    .line 275
    return-void
.end method
