<<<<<<< HEAD
# PERN project for CS 204
* This is a quiz application with user authentification

<img src="./public/img1.png" width="50%" /><img src="./public/img2.png" width="50%" />
<img src="./public/img3.png" width="50%" /><img src="./public/img5.png" width="50%" /> 
<img src="./public/img6.png" width="50%" /><img src="./public/img4.png" width="50%" />
<img src="./public/img3.gif" width="100%" />


## [API Documentation](https://peaceful-retreat-54716.herokuapp.com/api-docs/)
* To view all users data from database `/all`  HTTP Method: Get
* To view a certain user data from database `/all:id`  HTTP Method: Get
* To sign in `/signin` HTTP Method: Post
* To register `/register` HTTP Method: Post
* To view an authorized user's (your) data `/profile/:id` HTTP Method: Get/Post
* To view and update score `/score` HTTP Method: Put
* To view API documentation `/api-docs` HTTP Method: GET


## Tool / technologies used
* `PERN Stack` (Postgeres Express React Node)
* `bcrypt` for hashing password
* `knex-js` to connect database with the backend
* `particles-js` for background
* `tachyons` for styling
* `REST API`

## [Database schema](https://github.com/Zhantoroev/awesome-api/blob/main/PSQL.txt)

#### Users table example :
| id       | name      | email            | score | joined     |
| ---      | ---       | ---              | ---   | ---        |
| 1        | Syimyk    | syimyk@gmail.com | 55    | 2021-05-09 |

#### Login table example :
| id       | email            | hash                                                         |
| ---      | ---              | ---                                                          |
| 1        | syimyk@gmail.com | $2a$05$LhayLxezLhK1LhWvKxCyLOj0j1u.Kj0jZ0pEmm134uzrQlFvQJLF6 |



## Instructions to build to Docker image 
1. Clone repo
```
git clone https://github.com/AntTechLabs/awesome_cats_frontend.git
cd frontend-awesome-cats
```
2. Build a docker image with the tag name 'frontend'
```
docker build -t frontend .
=======
<<<<<<< HEAD
# Awesome-Cats Backend
## Instructions to build to Docker image 
1. Clone repo
```
git clone https://github.com/AntTechLabs/awesome_cats_backend.git
cd backend-awesome-cats
```
2. Build a docker image with the tag name 'backend'
```
docker build -t backend .
>>>>>>> 4065b15f48978b07f8e809f61d058fd266a209d2
```
3. Create a new repo in Docker Hub and Login to docker from CLI
```
docker login
```
4. Change docker image tag
```bash
docker tag frontend <docker-username>/<repo-name>
# If you'd like to add tag you can run
docker tag frontend <docker-username>/<repo-name>:tagname
```
4. Push your image to Docker Hub
```
docker push <docker-username>/<repo-name>:
```

<<<<<<< HEAD
After completing all of those steps above you would have a built docker image that you can use further as the usual docker image<br>
<br>

<h2 style=color:orange> "The only way to do great work is to love what you do."</h2><h3> - Steve Jobs </h3>
=======
After completing all of those steps above you would have a built docker image that you can use further as the usual docker image<br><br>

```bash
#NOTE: If you'd like to run this backend application as a docker container, then you need to specify environment variables  such as *_PGHOST, PGUSER, PGDATABASE, PGPASSWORD_* to connect to the PostgreSQL database.

# If you are going to use Kubernetes, then specify those values in the pod manifest file. Otherwise, your backend service won't be able to connect to a database
```
<br>

<h2 style=color:orange>"Success is not final, failure is not fatal: it is the courage to continue that counts."</h2><h3> - Winston Churchill</h3>
=======
# My Full Project



## Getting started

To make it easy for you to get started with GitLab, here's a list of recommended next steps.

Already a pro? Just edit this README.md and make it your own. Want to make it easy? [Use the template at the bottom](#editing-this-readme)!

## Add your files

- [ ] [Create](https://docs.gitlab.com/ee/user/project/repository/web_editor.html#create-a-file) or [upload](https://docs.gitlab.com/ee/user/project/repository/web_editor.html#upload-a-file) files
- [ ] [Add files using the command line](https://docs.gitlab.com/ee/gitlab-basics/add-file.html#add-a-file-using-the-command-line) or push an existing Git repository with the following command:

```
cd existing_repo
git remote add origin https://gitlab.com/cicd5670132/my_full_project.git
git branch -M main
git push -uf origin main
```

## Integrate with your tools

- [ ] [Set up project integrations](https://gitlab.com/cicd5670132/my_full_project/-/settings/integrations)

## Collaborate with your team

- [ ] [Invite team members and collaborators](https://docs.gitlab.com/ee/user/project/members/)
- [ ] [Create a new merge request](https://docs.gitlab.com/ee/user/project/merge_requests/creating_merge_requests.html)
- [ ] [Automatically close issues from merge requests](https://docs.gitlab.com/ee/user/project/issues/managing_issues.html#closing-issues-automatically)
- [ ] [Enable merge request approvals](https://docs.gitlab.com/ee/user/project/merge_requests/approvals/)
- [ ] [Set auto-merge](https://docs.gitlab.com/ee/user/project/merge_requests/merge_when_pipeline_succeeds.html)

## Test and Deploy

Use the built-in continuous integration in GitLab.

- [ ] [Get started with GitLab CI/CD](https://docs.gitlab.com/ee/ci/quick_start/index.html)
- [ ] [Analyze your code for known vulnerabilities with Static Application Security Testing (SAST)](https://docs.gitlab.com/ee/user/application_security/sast/)
- [ ] [Deploy to Kubernetes, Amazon EC2, or Amazon ECS using Auto Deploy](https://docs.gitlab.com/ee/topics/autodevops/requirements.html)
- [ ] [Use pull-based deployments for improved Kubernetes management](https://docs.gitlab.com/ee/user/clusters/agent/)
- [ ] [Set up protected environments](https://docs.gitlab.com/ee/ci/environments/protected_environments.html)

***

# Editing this README

When you're ready to make this README your own, just edit this file and use the handy template below (or feel free to structure it however you want - this is just a starting point!). Thanks to [makeareadme.com](https://www.makeareadme.com/) for this template.

## Suggestions for a good README

Every project is different, so consider which of these sections apply to yours. The sections used in the template are suggestions for most open source projects. Also keep in mind that while a README can be too long and detailed, too long is better than too short. If you think your README is too long, consider utilizing another form of documentation rather than cutting out information.

## Name
Choose a self-explaining name for your project.

## Description
Let people know what your project can do specifically. Provide context and add a link to any reference visitors might be unfamiliar with. A list of Features or a Background subsection can also be added here. If there are alternatives to your project, this is a good place to list differentiating factors.

## Badges
On some READMEs, you may see small images that convey metadata, such as whether or not all the tests are passing for the project. You can use Shields to add some to your README. Many services also have instructions for adding a badge.

## Visuals
Depending on what you are making, it can be a good idea to include screenshots or even a video (you'll frequently see GIFs rather than actual videos). Tools like ttygif can help, but check out Asciinema for a more sophisticated method.

## Installation
Within a particular ecosystem, there may be a common way of installing things, such as using Yarn, NuGet, or Homebrew. However, consider the possibility that whoever is reading your README is a novice and would like more guidance. Listing specific steps helps remove ambiguity and gets people to using your project as quickly as possible. If it only runs in a specific context like a particular programming language version or operating system or has dependencies that have to be installed manually, also add a Requirements subsection.

## Usage
Use examples liberally, and show the expected output if you can. It's helpful to have inline the smallest example of usage that you can demonstrate, while providing links to more sophisticated examples if they are too long to reasonably include in the README.

## Support
Tell people where they can go to for help. It can be any combination of an issue tracker, a chat room, an email address, etc.

## Roadmap
If you have ideas for releases in the future, it is a good idea to list them in the README.

## Contributing
State if you are open to contributions and what your requirements are for accepting them.

For people who want to make changes to your project, it's helpful to have some documentation on how to get started. Perhaps there is a script that they should run or some environment variables that they need to set. Make these steps explicit. These instructions could also be useful to your future self.

You can also document commands to lint the code or run tests. These steps help to ensure high code quality and reduce the likelihood that the changes inadvertently break something. Having instructions for running tests is especially helpful if it requires external setup, such as starting a Selenium server for testing in a browser.

## Authors and acknowledgment
Show your appreciation to those who have contributed to the project.

## License
For open source projects, say how it is licensed.

## Project status
If you have run out of energy or time for your project, put a note at the top of the README saying that development has slowed down or stopped completely. Someone may choose to fork your project or volunteer to step in as a maintainer or owner, allowing your project to keep going. You can also make an explicit request for maintainers.
>>>>>>> 981cfb630e5c8c809c36e4cdf8409dedfbf54ccb
>>>>>>> 4065b15f48978b07f8e809f61d058fd266a209d2
