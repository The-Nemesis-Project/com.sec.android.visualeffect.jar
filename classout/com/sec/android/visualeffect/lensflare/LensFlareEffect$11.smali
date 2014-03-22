.class Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$11;
.super Ljava/lang/Object;
.source "LensFlareEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showUnlockAffordance(JLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .registers 2

    .prologue
    .line 861
    iput-object p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$11;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 864
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$11;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    # invokes: Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->playUnlockAffordance()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->access$1800(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    .line 865
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$11;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isPlayAffordance:Z
    invoke-static {v0, v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->access$1902(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;Z)Z

    .line 866
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$11;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->access$2002(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 867
    return-void
.end method
