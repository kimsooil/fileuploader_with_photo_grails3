package fileuploader_with_profile_photo

class User {

    String name
    String email
    byte[] avatar

    static constraints = {
        name(blank:false)
        email(blank:false, unique:true)
        avatar(maxSize: 1024 * 1024 * 20, nullable:true) // Limit upload file size to 20 MB
    }

}