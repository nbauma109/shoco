#define __int64 int64_t
#include <jni.h>
#include <stdio.h>
#include "org_shoco_Shoco.h"


/*
 * Class:     org_shoco_Shoco
 * Method:    compress
 * Signature: (Ljava/lang/String;)Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_org_shoco_Shoco_compress
  (JNIEnv *env, jclass jcl, jstring jstr)
{
    char buffer[4096];
    const char *str = (*env)->GetStringUTFChars(env, jstr, 0);
    shoco_compress(str, 0, buffer, 4096);
    (*env)->ReleaseStringUTFChars(env, jstr, str);
    return (*env)->NewStringUTF(env, buffer);
}

/*
 * Class:     org_shoco_Shoco
 * Method:    decompress
 * Signature: (Ljava/lang/String;)Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_org_shoco_Shoco_decompress
  (JNIEnv *env, jclass jcl, jstring jstr, jint comp_len)
{
    char buffer[4096];
    const char *str = (*env)->GetStringUTFChars(env, jstr, 0);
    shoco_decompress(str, comp_len, buffer, 4096);
    (*env)->ReleaseStringUTFChars(env, jstr, str);
    return (*env)->NewStringUTF(env, buffer);

}
