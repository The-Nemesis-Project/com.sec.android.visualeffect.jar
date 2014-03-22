.class Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$12;
.super Ljava/lang/Object;
.source "LensFlareEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->show()V
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
    .line 946
    iput-object p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$12;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 949
    const-string v0, "LensFlare"

    const-string v1, "mFirstCreatedRunnable,  isBeforeInit is True and called lensFlareinit()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$12;->this$0:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    # invokes: Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lensFlareinit()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->access$2100(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    .line 951
    return-void
.end method
