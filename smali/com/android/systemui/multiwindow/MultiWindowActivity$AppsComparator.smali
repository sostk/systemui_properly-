.class public Lcom/android/systemui/multiwindow/MultiWindowActivity$AppsComparator;
.super Ljava/lang/Object;
.source "MultiWindowActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/MultiWindowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppsComparator"
.end annotation


# instance fields
.field collator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/multiwindow/MultiWindowActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/multiwindow/MultiWindowActivity;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$AppsComparator;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$AppsComparator;->collator:Ljava/text/Collator;

    .line 297
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 303
    iget-object v2, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$AppsComparator;->collator:Ljava/text/Collator;

    check-cast p1, Lcom/android/systemui/multiwindow/AppInfo;

    .end local p1    # "lhs":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/systemui/multiwindow/AppInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    .line 304
    .local v0, "key1":Ljava/text/CollationKey;
    iget-object v2, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$AppsComparator;->collator:Ljava/text/Collator;

    check-cast p2, Lcom/android/systemui/multiwindow/AppInfo;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/android/systemui/multiwindow/AppInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v1

    .line 305
    .local v1, "key2":Ljava/text/CollationKey;
    invoke-virtual {v0, v1}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result v2

    return v2
.end method
